<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">20.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Examples" Type="Folder">
			<Item Name="Test Enum 2--enum.ctl" Type="VI" URL="../Unit Tests/Support/Test Enum 2--enum.ctl"/>
			<Item Name="Example Cluster 1.ctl" Type="VI" URL="../Example/Example Cluster 1.ctl"/>
			<Item Name="Example Create JSON Schema.vi" Type="VI" URL="../Example Create JSON Schema.vi"/>
		</Item>
		<Item Name="JSON Schema Generator.lvlib" Type="Library" URL="../JSON Schema Generator.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
