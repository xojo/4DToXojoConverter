#tag Class
Protected Class FormToWindow
	#tag Method, Flags = &h21
		Private Sub AddAllowFocusRing(source As Dictionary, destination As Dictionary)
		  AddProperty(source, destination, "focusable", "AllowFocusRing", "True")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoBevelButton(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopBevelButton"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoButton(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "text", "Caption", "")
		  AddProperty(source, c, "defaultButton" , "Default", "False")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopButton"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoCheckBox(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "text", "Caption", "")
		  AddAllowFocusRing(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopCheckBox"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoComboBox(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  AddDefaultRows(source, c, "choiceList")
		  c.Value("xojo.controlType") = "DesktopComboBox"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoGroupBox(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "text", "text", "")
		  AddFontInfo(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopGroupBox"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoHeirarchicalListBox(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddLine(c, "AllowExpandableRows", "True")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopListBox"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoHTMLViewer(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopHTMLViewer"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoLabel(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "text" , "text", "")
		  AddFontInfo(source, c)
		  AddTextAlignment(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopLabel"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoListBox(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddFontInfo(source, c)
		  AddProperty(source, c, "scrollbarHorizontal", "HasHorizontalScrollbar", "True", "visible":"True", "hidden":"False")
		  AddProperty(source, c, "scrollbarVertical", "HasVerticalScrollbar", "True", "visible":"True", "hidden":"False")
		  AddProperty(source, c, "selectionMode", "rowSelectionType", 0, "single":"0", "multiple":"1")
		  If source.HasKey("columns") Then
		    Var cols() As Object = source.Value("columns")
		    AddLine(c, "ColumnCount", cols.Count)
		    Var header As String
		    For i As Integer = 0 To cols.LastIndex
		      Var col As Dictionary = Dictionary(cols(i))
		      Var h As Dictionary = col.Value("header")
		      header = header + h.Value("text") + Chr(9)
		    Next 
		    header = header.TrimRight(Chr(9))
		    If header = "" Then
		      AddDefaultRows(source, c, name)
		    Else
		      AddLine(c, "HasHeader", "True")
		      AddDefaultRows(source, c, "choiceList", header)
		    End If
		  End If
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopListBox"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoOval(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopOval"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoPopupMenu(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddDefaultRows(source, c, "choiceList")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopPopUpMenu"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoProgressBar(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "max", "maximumvalue", 0)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopProgressBar"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoProgressWheel(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopProgressWheel"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoRadioButton(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "text", "Caption", "")
		  AddProperty(source, c, "radioGroup", "radioGroup", "")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopRadioButton"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoRectangle(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddColor(source, c, "fill", "fillcolor")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopRectangle"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoSeparator(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopSeparator"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoSlider(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddProperty(source, c, "max", "maximumvalue", 0)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopSlider"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoTabPanel(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddDefaultRows(source, c, "labels", "\r")
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopTabPanel"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoTextFieldArea(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddTextAlignment(source, c)
		  AddAllowFocusRing(source, c)
		  AddReadOnly(source, c)
		  AddFontInfo(source, c)
		  AddProperty(source, c, "spellcheck", "AllowSpellChecking", "False")
		  
		  cd.Value(name) = c
		  If source.HasKey("multiline") Then
		    AddProperty(source, c, "multiline",  "multiline", "True", "Yes":"True", "No":"False")
		    AddProperty(source, c, "scrollbarHorizontal", "HasHorizontalScrollbar", "True", "visible":"True", "hidden":"False")
		    AddProperty(source, c, "styledText",  "AllowStyledText", "True")
		    c.Value("xojo.controlType") = "DesktopTextArea"
		  Else
		    c.Value("xojo.controlType") = "DesktopTextField"
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoUnsupportedControl(name As string, source As Dictionary, DDDDName As String)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  AddLine(c, "text", "Unsupported: " + DDDDName)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopLabel"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddAsXojoUpDownArrows(name As string, source As Dictionary)
		  Var cd As Dictionary = ControlsDictionary
		  Var c As New Dictionary
		  AddDesktopUIControlProperties(source, c)
		  cd.Value(name) = c
		  c.Value("xojo.controlType") = "DesktopUpDownArrows"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddColor(source As Dictionary, destination As Dictionary, DDDDName As String, xojoName As String)
		  If source.HasKey(DDDDName) Then
		    AddLine(destination, xojoName, "&c" + source.Value(DDDDName).StringValue + "00")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddDefaultRows(source As Dictionary, destination As Dictionary, listName As String, rowSeparator As String = "\n", header As String = "")
		  If source.HasKey(listName) Then
		    Var cl As Dictionary = source.Value(listName)
		    Var path As String = cl.Value("$ref")
		    Var nameInListFile As String = path.NthField("/", 4)
		    If DefaultRowsData = Nil Then
		      Var listsItem As FolderItem = SourceFile.Parent.Parent.Parent
		      If listsItem.Name <> "Sources" Then
		        System.Beep
		        MessageBox("The Sources folder could not be found. Default rows will be missing.")
		      Else
		        Var listsFileName As String = path.NthField("/", 3)
		        listsFileName = listsFileName.TrimRight("#")
		        listsItem = listsItem.Child(listsFileName)
		        If listsItem.Exists Then
		          Var fileStream As TextInputStream = TextInputStream.Open(listsItem)
		          Var data As String = fileStream.ReadAll
		          fileStream.close
		          DefaultRowsData = ParseJSON(data)
		        Else
		          System.Beep
		          MessageBox("The file " + listsItem.Name + " appears to be missing.")
		        End If
		      End If
		    End If
		    
		    'The data was loaded
		    If DefaultRowsData <> Nil Then
		      If DefaultRowsData.HasKey(nameInListFile) Then
		        'Find the rows for this control
		        Var d As Dictionary = DefaultRowsData.Value(nameInListFile)
		        Var items() As Variant = d.Value("items")
		        Var initialValue As String
		        If header <> "" Then
		          initialValue = header + EndOfLine
		        End If
		        'load them
		        For Each item As Variant In items
		          Var rowText As String = Dictionary(item).Value("text")
		          initialValue = initialValue + rowText + rowSeparator
		        Next
		        initialValue = initialValue.TrimRight(rowSeparator)
		        'Create the Xojo property
		        If rowSeparator = "\r" Then 'it's a tabpanel
		          AddLine(destination, "tabDefinition", initialValue)
		        Else
		          AddLine(destination, "InitialValue", initialValue)
		        End If
		      Else
		        'There are no rows so add the header if one is present
		        If header <> "" Then
		          AddLine(destination, "InitialValue", header)
		        end if
		      End If
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddDesktopUIControlProperties(source As Dictionary, destination As Dictionary)
		  AddProperty(source, destination, "top", "top", 0)
		  AddProperty(source, destination, "left", "left", 0)
		  AddProperty(source, destination, "width", "width", 10)
		  AddProperty(source, destination, "height", "height", 20)
		  AddProperty(source, destination, "visibility", "Visible", "True", "visible":"True", "Hidden":"False")
		  If source.HasKey("sizingX") Then
		    If source.Value("sizingX") = "grow" Then
		      AddLine(destination, "LockRight", "True")
		    ElseIf source.Value("sizingX") = "move" Then
		      AddLine(destination, "LockRight", "True")
		      AddLine(destination, "LockLeft", "False")
		    End If
		  End If
		  If source.HasKey("sizingY") Then
		    If source.Value("sizingY") = "grow" Then
		      AddLine(destination, "LockBottom", "True")
		    ElseIf source.Value("sizingY") = "move" Then
		      AddLine(destination, "LockBottom", "True")
		      AddLine(destination, "LockTop", "False")
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddFontInfo(source As Dictionary, destination As Dictionary)
		  AddProperty(source, destination, "fontFamily", "FontName", "System")
		  AddProperty(source, destination, "fontSize", "FontSize", 10)
		  AddProperty(source, destination, "fontWeight", "bold", "False", "bold":"True")
		  AddProperty(source, destination, "fontStyle", "italic", "False", "italic":"True")
		  AddProperty(source, destination, "textDecoration", "underline", "False", "underline":"True")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddLine(destination As Dictionary, key As String, value As Variant)
		  destination.Value(key) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddProperty(source As Dictionary, destination As Dictionary, DDDDName As string, xojoName As String, defaultValue As Variant, Paramarray KeyValues As Pair)
		  'For the optional key-value pairs, the 4D value is compared to the left side
		  'of the pair (the key) and if they match, the value (the right side) is assigned
		  'See AddTextAlignment for an example.
		  
		  If source.HasKey(DDDDName) Then
		    If KeyValues.Count > 0 Then
		      For Each one As pair In KeyValues
		        If source.Value(DDDDName).StringValue = one.Left Then
		          AddLine(destination, xojoName, one.Right)
		        End If
		      Next
		    Else
		      If defaultValue.IsNumeric Then
		        If defaultValue.DoubleValue > source.Value(DDDDName).DoubleValue Then
		          AddLine(destination, xojoName, defaultValue)
		        Else
		          AddLine(destination, xojoName, source.Value(DDDDName).StringValue)
		        End If
		      Else
		        AddLine(destination, xojoName, source.Value(DDDDName))
		      End If
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddReadOnly(source As Dictionary, destination As Dictionary)
		  AddProperty(source, destination, "enterable", "readonly", "false", "False":"True", "True":"False")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddTextAlignment(source As Dictionary, destination As Dictionary)
		  AddProperty(source, destination, "textAlign", "TextAlignment", 0, "Left":"1", "Center":"2", "Right":"3")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddWindowProperties()
		  AddProperty(theForm, ConvertedWindowData, "windowTitle" , "Title", "My Window")
		  AddProperty(theForm, ConvertedWindowData, "width", "width", 50)
		  AddProperty(theForm, ConvertedWindowData, "height" , "height", 50)
		  AddProperty(theForm, ConvertedWindowData, "windowMinWidth", "MinimumWidth", 64)
		  AddProperty(theForm, ConvertedWindowData, "windowMaxWidth", "MaximumWidth", 32000)
		  AddProperty(theForm, ConvertedWindowData, "windowMinHeight", "MinimumHeight", 64)
		  AddProperty(theForm, ConvertedWindowData, "windowMaxHeight", "MaximumHeight", 32000)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ControlsDictionary() As Dictionary
		  If Not ConvertedWindowData.HasKey("xojo.controls") Then
		    ConvertedWindowData.Value("xojo.controls") = New Dictionary
		  End If
		  
		  Return ConvertedWindowData.Value("xojo.controls")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Convert()
		  ConvertedWindowData = New Dictionary
		  
		  AddWindowProperties
		  
		  'Get the controls
		  For Each item As DictionaryEntry In theForm
		    If item.Key = "pages" Then
		      Var pages() As Object = item.Value
		      For j As Integer = 0 To pages.LastIndex
		        Var ctrls As Dictionary = Dictionary(pages(j))
		        ctrls = ctrls.Value("objects")
		        For Each theControl As DictionaryEntry In ctrls
		          Var ctrlName As String = theControl.Key
		          Var theProperties As Dictionary = theControl.Value
		          Select Case theProperties.Value("type")
		          Case "button"
		            AddAsXojoButton(ctrlName, theProperties)
		          Case "checkbox"
		            AddAsXojoCheckBox(ctrlName, theProperties)
		          Case "combo"
		            AddAsXojoComboBox(ctrlName, theProperties)
		          Case "dropdown"
		            AddAsXojoPopupMenu(ctrlName, theProperties)
		          Case "groupbox"
		            AddAsXojoGroupBox(ctrlName, theProperties)
		          Case "input"
		            AddAsXojoTextFieldArea(ctrlName, theProperties)
		          Case "line"
		            AddAsXojoSeparator(ctrlName, theProperties)
		          Case "list"
		            AddAsXojoHeirarchicalListBox(ctrlName, theProperties)
		          Case "listbox"
		            AddAsXojoListBox(ctrlName, theProperties)
		          Case "oval"
		            AddAsXojoOval(ctrlName, theProperties)
		          Case "picturebutton"
		            AddAsXojoBevelButton(ctrlName, theProperties)
		          Case "progress"
		            AddAsXojoProgressBar(ctrlName, theProperties)
		          Case "radio"
		            AddAsXojoRadioButton(ctrlName, theProperties)
		          Case "rectangle"
		            AddAsXojoRectangle(ctrlName, theProperties)
		          Case "ruler"
		            AddAsXojoSlider(ctrlName, theProperties)
		          Case "spinner"
		            AddAsXojoProgressWheel(ctrlName, theProperties)
		          Case "stepper"
		            AddAsXojoUpDownArrows(ctrlName, theProperties)
		          Case "tab"
		            AddAsXojoTabPanel(ctrlName, theProperties)
		          Case "text"
		            AddAsXojoLabel(ctrlName, theProperties)
		          Case "webarea"
		            AddAsXojoHTMLViewer(ctrlName, theProperties)
		          Else
		            AddAsXojoUnsupportedControl(ctrlName, theProperties, theProperties.Value("type"))
		          End Select
		        Next
		      Next
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FormattedControlName(name As String) As String
		  Return name.ReplaceAll(" ", "_")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FormattedValue(value As Variant) As String
		  If value = "True" Or value = "False" Then Return value
		  
		  If value.IsNumeric Then Return value
		  
		  Return doubleQuote + value + doubleQuote
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XojoWindow() As String
		  Convert
		  
		  Var data As String
		  
		  'header
		  data = "#tag DesktopWindow" + EndOfLine
		  data = data + "Begin DesktopWindow Window1" + EndOfLine
		  
		  'Do we need to set the window size?
		  If Not ConvertedWindowData.HasKey("width") And Not ConvertedWindowData.HasKey("height") Then
		    If ConvertedWindowData.HasKey("xojo.controls") Then
		      Var windowWidth, windowHeight As Integer
		      Var theControls As Dictionary = ConvertedWindowData.Value("xojo.controls")
		      Var keys() As Variant = theControls.Keys
		      For Each key As String In keys
		        Var ctrl As Dictionary = theControls.Value(key)
		        'determine if this control's right side is the furtherest right so far
		        If ctrl.HasKey("Left") And ctrl.HasKey("Width") Then
		          If ctrl.Value("Left").IntegerValue + ctrl.Value("Width").IntegerValue > windowWidth Then
		            windowWidth = ctrl.Value("Left").IntegerValue + ctrl.Value("Width").IntegerValue
		          End If
		        End If
		        'determine if this control's bottom side is the furtherest down so far
		        If ctrl.HasKey("Top") And ctrl.HasKey("Height") Then
		          If ctrl.Value("Top").IntegerValue + ctrl.Value("Height").IntegerValue > windowHeight Then
		            windowHeight = ctrl.Value("Top").IntegerValue + ctrl.Value("Height").IntegerValue
		          End If
		        End If
		      Next
		      ConvertedWindowData.Value("width") = windowWidth + 20 'margin
		      ConvertedWindowData.Value("height") = windowHeight + 20 'margin
		    End If
		  End If
		  
		  'get window properties
		  For Each entry As DictionaryEntry In ConvertedWindowData
		    If entry.Key <> "xojo.controls" Then
		      data = data + FormattedControlName(entry.Key.StringValue) + "=" + FormattedValue(entry.Value) + EndOfLine
		    End If
		  Next
		  
		  'loop through controls and output them
		  If ConvertedWindowData.HasKey("xojo.controls") Then
		    Var theControls As Dictionary = ConvertedWindowData.Value("xojo.controls")
		    Var keys() As Variant = theControls.Keys
		    For Each key As String In keys
		      Var ctrl As Dictionary = theControls.Value(key)
		      data = data + "Begin " + ctrl.Value("xojo.controltype") + " " + FormattedControlName(key) + EndOfLine
		      'output the properties of the control
		      For Each prop As DictionaryEntry In ctrl
		        If prop.key <> "xojo.controltype" Then
		          data = data + FormattedControlName(prop.Key.StringValue) + "=" + FormattedValue(prop.Value) + EndOfLine
		        End If
		      Next
		      data = data + "End" + EndOfLine
		    Next
		  End If
		  
		  'footer
		  data = data + "End" + EndOfLine
		  data = data + "#tag EndDesktopWindow"
		  
		  Return data
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ConvertedWindowData As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DefaultRowsData As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		theForm As Dictionary
	#tag EndProperty


	#tag Constant, Name = doubleQuote, Type = String, Dynamic = False, Default = \"\"", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
