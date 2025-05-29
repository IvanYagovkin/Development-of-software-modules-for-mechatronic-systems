<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="led A.vi" Type="VI" URL="../../Документы/КУРСОВАЯ/led A.vi"/>
		<Item Name="qwerty.iak" Type="Document" URL="../../Документы/КУРСОВАЯ/qwerty.iak"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ErrorConvert.vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/SubVIs/ErrorConvert.vi"/>
				<Item Name="FP Write (Boolean -IO).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Boolean -IO).vi"/>
				<Item Name="FP Write (Boolean Array -IO).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Boolean Array -IO).vi"/>
				<Item Name="FP Write (Boolean Array).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Boolean Array).vi"/>
				<Item Name="FP Write (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Boolean).vi"/>
				<Item Name="FP Write (Float -IO).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Float -IO).vi"/>
				<Item Name="FP Write (Float Array -IO).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Float Array -IO).vi"/>
				<Item Name="FP Write (Float Array).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Float Array).vi"/>
				<Item Name="FP Write (Float).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Float).vi"/>
				<Item Name="FP Write (Polymorphic).vi" Type="VI" URL="/&lt;vilib&gt;/FieldPoint/Polymorphic Write.llb/FP Write (Polymorphic).vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-cFP2220-0165C974" Type="RT FIELDPOINT">
		<Property Name="alias.name" Type="Str">NI-cFP2220-0165C974</Property>
		<Property Name="alias.value" Type="Str">192.168.1.2</Property>
		<Property Name="Bound" Type="Bool">false</Property>
		<Property Name="CCSymbols" Type="Str">RT,1;FP,1;TARGET_TYPE,RT;OS,VxWorks;CPU,PowerPC;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">2</Property>
		<Property Name="host.TargetOSID" Type="UInt">14</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
Listen 8000
ThreadLimit 10
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
LoadModulePath $LVSERVER_MODULEPATHS
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule
LoadModule dir libdirModule
LoadModule copy libcopyModule

AddHandler LVAuthHandler
AddHandler LVRFPHandler

AddHandler dirHandler
AddHandler copyHandler 

KeepAlive on
KeepAliveTimeout 60
Timeout 60

</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Property Name="Type" Type="Str">cFP-2220</Property>
		<Item Name="cFP-2220 @0" Type="FP Device">
			<Item Name="Digital Input 1" Type="FP Point"/>
			<Item Name="Digital Input 2" Type="FP Point"/>
			<Item Name="Digital Output 1" Type="FP Point"/>
			<Item Name="Digital Output 2" Type="FP Point"/>
			<Item Name="DIP Switch 1" Type="FP Point"/>
			<Item Name="DIP Switch 2" Type="FP Point"/>
			<Item Name="LED A" Type="FP Point"/>
			<Item Name="LED B" Type="FP Point"/>
			<Item Name="LED C" Type="FP Point"/>
			<Item Name="LED D" Type="FP Point"/>
			<Item Name="Power Source" Type="FP Point"/>
		</Item>
		<Item Name="cFP-PWM-520 @3" Type="FP Device">
			<Item Name="All" Type="FP Point"/>
			<Item Name="Channel 0" Type="FP Point"/>
			<Item Name="Channel 1" Type="FP Point"/>
			<Item Name="Channel 2" Type="FP Point"/>
			<Item Name="Channel 3" Type="FP Point"/>
			<Item Name="Channel 4" Type="FP Point"/>
			<Item Name="Channel 5" Type="FP Point"/>
			<Item Name="Channel 6" Type="FP Point"/>
			<Item Name="Channel 7" Type="FP Point"/>
		</Item>
		<Item Name="cFP-RLY-425 @1" Type="FP Device">
			<Item Name="All" Type="FP Point"/>
			<Item Name="Channel 0" Type="FP Point"/>
			<Item Name="Channel 1" Type="FP Point"/>
			<Item Name="Channel 2" Type="FP Point"/>
			<Item Name="Channel 3" Type="FP Point"/>
			<Item Name="Channel 4" Type="FP Point"/>
			<Item Name="Channel 5" Type="FP Point"/>
			<Item Name="Channel 6" Type="FP Point"/>
			<Item Name="Channel 7" Type="FP Point"/>
		</Item>
		<Item Name="cFP-TC-120 @2" Type="FP Device">
			<Item Name="All" Type="FP Point"/>
			<Item Name="Channel 0" Type="FP Point"/>
			<Item Name="Channel 1" Type="FP Point"/>
			<Item Name="Channel 2" Type="FP Point"/>
			<Item Name="Channel 3" Type="FP Point"/>
			<Item Name="Channel 4" Type="FP Point"/>
			<Item Name="Channel 5" Type="FP Point"/>
			<Item Name="Channel 6" Type="FP Point"/>
			<Item Name="Channel 7" Type="FP Point"/>
			<Item Name="CJ Temperature" Type="FP Point"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
