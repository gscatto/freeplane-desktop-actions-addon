<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Desktop Actions" FOLDED="false" ID="ID_1910557408" CREATED="1587042042523" MODIFIED="1587042898086" LINK="https://github.com/giulioscattolin/freeplane-desktop-actions-addon" BACKGROUND_COLOR="#97c7dc" STYLE="oval">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<attribute NAME="name" VALUE="desktopActions"/>
<attribute NAME="version" VALUE="v0.1"/>
<attribute NAME="author" VALUE="Giulio Scattolin &lt;giulio.scattolin@gmail.com&gt;"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.7.2"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE="https://github.com/giulioscattolin/freeplane-desktop-actions-addon"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="description" POSITION="left" ID="ID_640589168" CREATED="1587042155194" MODIFIED="1587042155204">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#160;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1113048946" CREATED="1587042394444" MODIFIED="1587043784363"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This add-on provides a meaningful script to open files, directories and URIs using the <a href="https://docs.oracle.com/javase/8/docs/api/java/awt/Desktop.html">java.awt.Desktop</a>&#160;class: it looks for the associated application registered on the current platform, and launch it to handle a URI or file.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1150606695" CREATED="1587042155205" MODIFIED="1587042155208">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_924171899" CREATED="1587042155209" MODIFIED="1587042155213">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#160;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_1745521829" CREATED="1587042155214" MODIFIED="1587042155215"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_142859732" CREATED="1587042155223" MODIFIED="1587042155227">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&#160;node.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_1874393552" CREATED="1587042155228" MODIFIED="1587042155231">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="translations" POSITION="left" ID="ID_278898916" CREATED="1587042155232" MODIFIED="1587042155235">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_1722186393" CREATED="1587042155236" MODIFIED="1587042643678">
<attribute_layout NAME_WIDTH="116.99999651312838 pt" VALUE_WIDTH="116.99999651312838 pt"/>
<attribute NAME="addons.${name}" VALUE="Desktop Actions"/>
<attribute NAME="addons.${name}.Open" VALUE="Open or browse resource.."/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1062736255" CREATED="1587042155268" MODIFIED="1587042604842">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/Open.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_1016645595" CREATED="1587042155281" MODIFIED="1587042155288">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &#160;&#160;&#160;-&#160;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#160;&#160;&#160;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#160;variable is set to the selected node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#160;&#160;&#160;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#160;&#160;&#160;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#160;&#160;&#160;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#160;that the script(s) require, each either false or true:
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_asking
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#160;&#160;Notes:
    </p>
    <p>
      &#160;&#160;- The set of permissions is fixed.
    </p>
    <p>
      &#160;&#160;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#160;&#160;- Set the values either to true or to false
    </p>
    <p>
      &#160;&#160;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Open.groovy" FOLDED="true" ID="ID_57172042" CREATED="1587042540840" MODIFIED="1587042627834">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="207.7499938085677 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.Open"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="// @ExecutionModes({ON_SELECTED_NODE})&#xa;&#xa;/*&#xa;  &#xa;  Open.groovy&#xa;&#xa;  It launches the associated application to open or browse the resource using the java.awt.Desktop class (see https://docs.oracle.com/javase/8/docs/api/java/awt/Desktop). It handles files and directories by their path (being absolute or relative to the directory containing the map file) and URIs.&#xa;&#xa; */&#xa;&#xa;package giulioscattolin.freeplane.desktopactions&#xa;&#xa;import java.awt.Desktop&#xa;import java.nio.file.Files&#xa;import java.nio.file.Path&#xa;import java.nio.file.Paths&#xa;import org.freeplane.plugin.script.FreeplaneScriptBaseClass&#xa;&#xa;class Open extends FreeplaneScriptBaseClass {&#xa;  def run() {&#xa;    // Define flags for action support.&#xa;    def isOpenActionSupportedFlag = false&#xa;    def isBrowseActionSupportedFlag = false&#xa;&#xa;    // Obtain the desktop instance.&#xa;    def desktop = obtainDesktopInstance()&#xa;    // If desktop is an invalid reference..&#xa;    if (desktop == null) {&#xa;      // Quit.&#xa;      return&#xa;    }&#xa;&#xa;    // If the OPEN action is supported..&#xa;    if (isOpenActionSupported(desktop)) {&#xa;      // Activate the appropriate flag.&#xa;      isOpenActionSupportedFlag = true&#xa;&#xa;      // If the resource has been opened successfully using the content of the selected node as an absolute path..&#xa;      if (openResourceUsingAbsolutePath(node.text, desktop)) {&#xa;        // Quit.&#xa;        return&#xa;      }&#xa;&#xa;      // If the resource has been opened successfully using the content of the selected node as a relative path to the directory containing the map file..&#xa;      if (openResourceUsingPathRelativeToMapFileDirectory(node.text, desktop)) {&#xa;        // Quit.&#xa;        return&#xa;      }&#xa;    }&#xa;    // If the BROWSE action is supported..&#xa;    if (isBrowseActionSupported(desktop)) {&#xa;      // Activate the appropriate flag.&#xa;      isBrowseActionSupportedFlag = true&#xa;      &#xa;      // If the resource has been opened successfully using the content of the selected node as an URI..&#xa;      if (openResourceUsingURI(node.text, desktop)) {&#xa;        // Quit.&#xa;        return&#xa;      }&#xa;    }&#xa;&#xa;    if (isOpenActionSupportedFlag &amp;&amp; isBrowseActionSupportedFlag) {&#xa;      // There are no more options, the resource won&apos;t be opened.&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the node does not contain the path of an existent file / directory or a valid URI.&quot;)&#xa;      // Finally, quit.&#xa;    }&#xa;&#xa;    // The user should have already been informed, quit.&#xa;  }&#xa;&#xa;  def obtainDesktopInstance() {&#xa;    // If the Desktop object is supported..&#xa;    if (Desktop.isDesktopSupported()) {&#xa;      // Return the Desktop instance.&#xa;      return Desktop.getDesktop()&#xa;    } else {&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the Desktop class is not supported on the current platform.&quot;)&#xa;      // Finally, report error.&#xa;      return null&#xa;    }&#xa;  }&#xa;&#xa;  def isOpenActionSupported(desktop) {&#xa;    // If the OPEN action is supported..&#xa;    if (desktop.isSupported(Desktop.Action.OPEN)) {&#xa;      // Return true&#xa;      return true&#xa;    } else {&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the OPEN action is not supported on the current platform.&quot;)&#xa;      // Finally, return false.&#xa;      return false&#xa;    }&#xa;  }&#xa;&#xa;  def isBrowseActionSupported(desktop) {&#xa;    // If the BROWSE action is supported..&#xa;    if (desktop.isSupported(Desktop.Action.BROWSE)) {&#xa;      // Return true&#xa;      return true&#xa;    } else {&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the BROWSE action is not supported on the current platform.&quot;)&#xa;      // Finally, return false.&#xa;      return false&#xa;    }&#xa;  }&#xa;&#xa;  def openResourceUsingAbsolutePath(nodeText, desktop) {&#xa;    // Supposing the content of the selected node is the absolute path of a resource, create a Path instance from its string representation.&#xa;    def path = Paths.get(nodeText)&#xa;    // Obtain the associated file instance.&#xa;    def file = path.toFile()&#xa;    // If the file exists..&#xa;    if (file.exists()) {&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;Opening the resource using its absolute path..&quot;)&#xa;      &#xa;      // If the file is opened successfully..&#xa;      if (openFile(file, desktop)) {&#xa;        // Report success.&#xa;        return true&#xa;      } else {&#xa;        // Report insuccess.&#xa;        return false&#xa;      }&#xa;    } else {&#xa;      // Report insuccess.&#xa;      return false&#xa;    }&#xa;  }&#xa;  &#xa;  def openResourceUsingPathRelativeToMapFileDirectory(nodeText, desktop) {&#xa;    // Supposing the content of the selected node is the path of a resource relative to the directory containing the map file, obtain the parent directory as a file.&#xa;    def parentDirectory = node.map.file.getParentFile()&#xa;    // Create the appropriate File instance.&#xa;    File file = new File(parentDirectory, node.text)&#xa;    // If the file exists..&#xa;    if (file.exists()) {&#xa;      // Inform the user.&#xa;      setStatusInfo(&quot;Opening the resource using the path relative to map file directory..&quot;)&#xa;&#xa;      // If the file is opened successfully..&#xa;      if (openFile(file, desktop)) {&#xa;        // Report success.&#xa;        return true&#xa;      } else {&#xa;        // Report insuccess.&#xa;        return false&#xa;      }&#xa;    } else {&#xa;      // Report insuccess.&#xa;      return false&#xa;    }&#xa;  }&#xa;&#xa;  def openFile(file, desktop) {&#xa;    // Try to open the file..&#xa;    try {&#xa;      desktop.open(file)&#xa;    } catch (IOException e) {&#xa;      // If the specified file has no associated application or the associated application fails to be launched, inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because it has no associated application or the associated application failed to be launched.&quot;)&#xa;      &#xa;      // Report insuccess.&#xa;      return false&#xa;    } catch (SecurityException e) {&#xa;      // If a security manager exists and its SecurityManager.checkRead (java.lang.String) method denies read access to the file, or it denies the AWTPermission(&quot;showWindowWithoutWarningBanner&quot;) permission, or the calling thread is not allowed to create a subprocess.&#xa;      setStatusInfo(&quot;The resource cannot be opened because a security exception has been thrown.&quot;)&#xa;      &#xa;      // Report insuccess.&#xa;      return false&#xa;    }&#xa;&#xa;    // Inform the user.&#xa;    setStatusInfo(&quot;The resource has been successfully opened!&quot;)&#xa;    // Report success.&#xa;    return true&#xa;  }&#xa;&#xa;  def openResourceUsingURI(nodeText, desktop) {&#xa;    // Supposing the content of the selected node is the URI of the resource, tries to create an URI instance.&#xa;    try {&#xa;      def uri = new URI(nodeText)&#xa;&#xa;      // If the uri is browsed successfully..&#xa;      if (browseUri(uri, desktop)) {&#xa;        // Report success.&#xa;        return true&#xa;      }&#xa;    } catch (URISyntaxException e) {&#xa;      // The given string violates RFC 2396.&#xa;      // Ignore and continue.&#xa;    }&#xa;&#xa;    // Report insuccess.&#xa;    return false&#xa;  }&#xa;&#xa;  def browseUri(uri, desktop) {&#xa;    // Try to open the file..&#xa;    try {&#xa;      desktop.browse(uri)&#xa;    } catch (IOException e) {&#xa;      // If the user default browser is not found, or it fails to be launched, or the default handler application failed to be launched, inform the user.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the user default browser is not found, or it fails to be launched, or the default handler application failed to be launched.&quot;)&#xa;      &#xa;      // Report insuccess.&#xa;      return false&#xa;    } catch (SecurityException e) {&#xa;      // If a security manager exists and its SecurityManager.checkRead (java.lang.String) method denies read access to the file, or it denies the AWTPermission(&quot;showWindowWithoutWarningBanner&quot;) permission, or the calling thread is not allowed to create a subprocess.&#xa;      setStatusInfo(&quot;The resource cannot be opened because a security exception has been thrown.&quot;)&#xa;      &#xa;      // Report insuccess.&#xa;      return false&#xa;    } catch (IllegalArgumentException e) {&#xa;      // If the necessary permissions are not available and the URI can not be converted to a URL.&#xa;      setStatusInfo(&quot;The resource cannot be opened because the necessary permissions are not available and the URI can not be converted to an URL.&quot;)&#xa;      &#xa;      // Report insuccess.&#xa;      return false&#xa;    }&#xa;&#xa;    // Inform the user.&#xa;    setStatusInfo(&quot;The resource has been successfully browsed!&quot;)&#xa;    // Report success.&#xa;    return true&#xa;  }&#xa;&#xa;  def setStatusInfo(text) {&#xa;    c.setStatusInfo(text)&#xa;  }&#xa;}&#xa;&#xa;" ID="ID_1826042621" CREATED="1587043824152" MODIFIED="1587043824156"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1113283769" CREATED="1587042155310" MODIFIED="1587042155314">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1041050067" CREATED="1587042155316" MODIFIED="1587042155321">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="images" POSITION="right" ID="ID_1835384402" CREATED="1587042155322" MODIFIED="1587042155326">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#160;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</map>
