// @ExecutionModes({ON_SELECTED_NODE})

/*
  
  Open.groovy

  It launches the associated application to open or browse the resource using the java.awt.Desktop class (see https://docs.oracle.com/javase/8/docs/api/java/awt/Desktop). It handles files and directories by their path (being absolute or relative to the directory containing the map file) and URIs.

 */

package giulioscattolin.freeplane.desktopactions

import java.awt.Desktop
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import org.freeplane.plugin.script.FreeplaneScriptBaseClass

class Open extends FreeplaneScriptBaseClass {
  def run() {
    // Define flags for action support.
    def isOpenActionSupportedFlag = false
    def isBrowseActionSupportedFlag = false

    // Obtain the desktop instance.
    def desktop = obtainDesktopInstance()
    // If desktop is an invalid reference..
    if (desktop == null) {
      // Quit.
      return
    }

    // If the OPEN action is supported..
    if (isOpenActionSupported(desktop)) {
      // Activate the appropriate flag.
      isOpenActionSupportedFlag = true

      // If the resource has been opened successfully using the content of the selected node as an absolute path..
      if (openResourceUsingAbsolutePath(node.text, desktop)) {
        // Quit.
        return
      }

      // If the resource has been opened successfully using the content of the selected node as a relative path to the directory containing the map file..
      if (openResourceUsingPathRelativeToMapFileDirectory(node.text, desktop)) {
        // Quit.
        return
      }
    }
    // If the BROWSE action is supported..
    if (isBrowseActionSupported(desktop)) {
      // Activate the appropriate flag.
      isBrowseActionSupportedFlag = true
      
      // If the resource has been opened successfully using the content of the selected node as an URI..
      if (openResourceUsingURI(node.text, desktop)) {
        // Quit.
        return
      }
    }

    if (isOpenActionSupportedFlag && isBrowseActionSupportedFlag) {
      // There are no more options, the resource won't be opened.
      // Inform the user.
      setStatusInfo("The resource cannot be opened because the node does not contain the path of an existent file / directory or a valid URI.")
      // Finally, quit.
    }

    // The user should have already been informed, quit.
  }

  def obtainDesktopInstance() {
    // If the Desktop object is supported..
    if (Desktop.isDesktopSupported()) {
      // Return the Desktop instance.
      return Desktop.getDesktop()
    } else {
      // Inform the user.
      setStatusInfo("The resource cannot be opened because the Desktop class is not supported on the current platform.")
      // Finally, report error.
      return null
    }
  }

  def isOpenActionSupported(desktop) {
    // If the OPEN action is supported..
    if (desktop.isSupported(Desktop.Action.OPEN)) {
      // Return true
      return true
    } else {
      // Inform the user.
      setStatusInfo("The resource cannot be opened because the OPEN action is not supported on the current platform.")
      // Finally, return false.
      return false
    }
  }

  def isBrowseActionSupported(desktop) {
    // If the BROWSE action is supported..
    if (desktop.isSupported(Desktop.Action.BROWSE)) {
      // Return true
      return true
    } else {
      // Inform the user.
      setStatusInfo("The resource cannot be opened because the BROWSE action is not supported on the current platform.")
      // Finally, return false.
      return false
    }
  }

  def openResourceUsingAbsolutePath(nodeText, desktop) {
    // Supposing the content of the selected node is the absolute path of a resource, create a Path instance from its string representation.
    def path = Paths.get(nodeText)
    // Obtain the associated file instance.
    def file = path.toFile()
    // If the file exists..
    if (file.exists()) {
      // Inform the user.
      setStatusInfo("Opening the resource using its absolute path..")
      
      // If the file is opened successfully..
      if (openFile(file, desktop)) {
        // Report success.
        return true
      } else {
        // Report insuccess.
        return false
      }
    } else {
      // Report insuccess.
      return false
    }
  }
  
  def openResourceUsingPathRelativeToMapFileDirectory(nodeText, desktop) {
    // Supposing the content of the selected node is the path of a resource relative to the directory containing the map file, obtain the parent directory as a file.
    def parentDirectory = node.map.file.getParentFile()
    // Create the appropriate File instance.
    File file = new File(parentDirectory, node.text)
    // If the file exists..
    if (file.exists()) {
      // Inform the user.
      setStatusInfo("Opening the resource using the path relative to map file directory..")

      // If the file is opened successfully..
      if (openFile(file, desktop)) {
        // Report success.
        return true
      } else {
        // Report insuccess.
        return false
      }
    } else {
      // Report insuccess.
      return false
    }
  }

  def openFile(file, desktop) {
    // Try to open the file..
    try {
      desktop.open(file)
    } catch (IOException e) {
      // If the specified file has no associated application or the associated application fails to be launched, inform the user.
      setStatusInfo("The resource cannot be opened because it has no associated application or the associated application failed to be launched.")
      
      // Report insuccess.
      return false
    } catch (SecurityException e) {
      // If a security manager exists and its SecurityManager.checkRead (java.lang.String) method denies read access to the file, or it denies the AWTPermission("showWindowWithoutWarningBanner") permission, or the calling thread is not allowed to create a subprocess.
      setStatusInfo("The resource cannot be opened because a security exception has been thrown.")
      
      // Report insuccess.
      return false
    }

    // Inform the user.
    setStatusInfo("The resource has been successfully opened!")
    // Report success.
    return true
  }

  def openResourceUsingURI(nodeText, desktop) {
    // Supposing the content of the selected node is the URI of the resource, tries to create an URI instance.
    try {
      def uri = new URI(nodeText)

      // If the uri is browsed successfully..
      if (browseUri(uri, desktop)) {
        // Report success.
        return true
      }
    } catch (URISyntaxException e) {
      // The given string violates RFC 2396.
      // Ignore and continue.
    }

    // Report insuccess.
    return false
  }

  def browseUri(uri, desktop) {
    // Try to open the file..
    try {
      desktop.browse(uri)
    } catch (IOException e) {
      // If the user default browser is not found, or it fails to be launched, or the default handler application failed to be launched, inform the user.
      setStatusInfo("The resource cannot be opened because the user default browser is not found, or it fails to be launched, or the default handler application failed to be launched.")
      
      // Report insuccess.
      return false
    } catch (SecurityException e) {
      // If a security manager exists and its SecurityManager.checkRead (java.lang.String) method denies read access to the file, or it denies the AWTPermission("showWindowWithoutWarningBanner") permission, or the calling thread is not allowed to create a subprocess.
      setStatusInfo("The resource cannot be opened because a security exception has been thrown.")
      
      // Report insuccess.
      return false
    } catch (IllegalArgumentException e) {
      // If the necessary permissions are not available and the URI can not be converted to a URL.
      setStatusInfo("The resource cannot be opened because the necessary permissions are not available and the URI can not be converted to an URL.")
      
      // Report insuccess.
      return false
    }

    // Inform the user.
    setStatusInfo("The resource has been successfully browsed!")
    // Report success.
    return true
  }

  def setStatusInfo(text) {
    c.setStatusInfo(text)
  }
}

