（求合作，欢迎iOSer一起完善,ok）
#### 前言
获取iPhone相关信息、电池信息、屏幕信息、越狱状态以及网络状态等。

#### 使用方法
方式1、下载工程，然后将ZGInfoCollection文件夹放到自己的项目中去。    


#### 详细介绍
使用时导入ZGInfoCollection即可，里面包含了所有相关文件。下面简单介绍一下：    
1、ZGDeviceInfo


	/**
	 *  是否支持多任务
	 *
	 *  @return YES表示支持，NO表示不支持
	 */
	- (BOOL)multitaskingSupported;
	/**
	 *  单例实例化一个当前对象
	 *
	 *  @return 返回一个当前对象
	 */
	+ (instancetype)currentDeviceInfo;

	/**
	 *  得到当前用的什么手机，iPhon5s? iPhone6s ....
	 *
	 *  @return 手机类型名称
	 */
	- (NSString *)getCurrentDevicePhoneType;
	/**
	 *  得到当前设备独一标识符
	 *
	 *  @return 例如：0996E3AC-8800-4961-A3BF-5D49299C96E7
	 */
	- (NSString *)getUUID;
	/**
	 *  得到当前设备类型 ：iPhone / iPad
	 *
	 *  @return iPhone / iPad
	 */
	- (NSString *)getDeviceType;
	/**
	 *  得到当前的手机名称，关于本机里面的名称
	 *
	 *  @return 手机名称
	 */
	- (NSString *)getCurrentDeviceName;
	/**
	 *  得到当前系统名称
	 *
	 *  @return 系统名称
	 */
	- (NSString *)getSystemName;
	/**
	 *  得到当前系统版本
	 *
	 *  @return 版本.例如：9.3.4,以及最新的10
	 */
	- (NSString *)getSystemVersion;
	/**
	*  获取当前设置XNU内核版本号
	*
	*  @return 返回当前XNU内核版本号
	*/
	- (NSString *)getKernelVersion;
	/**
	 *  得到构建描述
	 *
	 *  @return 得到内核描述信息
	 */
	- (NSString *)getDarwinBuildDescription;
	/**
	 *  得到硬件类型
	 *
	 *  @return 硬件类型,iPhone8,1,iPhone5.1等等
	 */
	- (NSString *)getHardWardType;
	/**
	 *  得到当前网络节点名称
	 *
	 *  @return 当前节点名称
	 */
	- (NSString *)getNetWordNodeName;
	/**
	 *  得到当前操作系统名称
	 *
	 *  @return 内核操作系统名称
	 */
	- (NSString *)getOSName;

	/**
	 *  得到当前设备的核数
	 *
	 *  @return 核数
	 */
	- (NSInteger)getNuclearCount;
	/**
	 *  得到当前设备活跃的核数
	 *
	 *  @return 核数
	 */
	- (NSInteger)getActiveNuclearCount;

2、ZGStorageInfo   
  
    /**
	 *  得到当前磁盘总大小
	 *
	 *  @param type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的大小
	 *
	 *  @return 返回大小，可能有差距，但是相差不大
	 */
	- (NSString *)getDiskTotalSizeBySizeType:(ZGSizeType)type;

	/**
	 *  得到当前磁盘空闲内存大小
	 *
	 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
	 *
	 *  @return 返回大小，可能有差距，但是相差不大
	 */
	- (NSString *)getDiskFreeSizeBySizeType:(ZGSizeType)type;
	/**
	 *  得到当前磁盘已经使用的大小
	 *
	 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
	 *
	 *  @return 返回大小，可能有差距，但是相差不大
	 */
	- (NSString *)getDiskUsedSizeBySizeType:(ZGSizeType)type;

	/**
	*  得到当前物理内存总大小，指通过物理内存而获得的内存空间大小
	*
	*  @param type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的大小
	*
	*  @return 返回大小
	*/
	- (NSString *)getMemoryTotalSizeBySizeType:(ZGSizeType)type;

	/**
	 *  得到当前物理内存空闲内存大小 Unimplemented
	 *
	 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
	 *
	 *  @return 返回大小，可能有差距，但是相差不大
	 */
	- (NSString *)getMemoryFreeSizeBySizeType:(ZGSizeType)type;
	/**
	 *  得到当前内存已经使用的大小 Unimplemented
	 *
	 *  @param type type 大小类型：ZGSizeTypeOrigin是原始大小，没有经过转换，单位为B；ZGSizeTypeNormalized是规格化后的
	 *
	 *  @return 返回大小，可能有差距，但是相差不大
	 */
	- (NSString *)getMemoryUsedSizeBySizeType:(ZGSizeType)type;
3、ZGBatteryInfo   
 
	/**
	 *  当前电池量
	 *
	 *  @return 0-1
	 */
	- (CGFloat)currentBatteryLevel;
	/**
	 *  电池状态
	 *
	 *  @return 正在充电、未充电、充满电
	 */
	- (ZGBatteryState)batteryState;
	/**
	 *  电池是否允许监控
	 *
	 *  @return YES表示能够监控，NO表示不能够监控
	 */
	- (BOOL)isAllowMonitorBattery;

4、ZGScreenInfo    

	
	/**
	 *  单例构建当前屏幕信息
	 *
	 *  @return 当前对象实例
	 */
	+ (instancetype)currentScreenInfo;

	/**
	 *  得到当前屏幕宽度
	 *
	 *  @return 宽度值
	 */
	- (CGFloat)getCurrentScreenWith;
	/**
	 *  得到当前屏幕高度
	 *
	 *  @return 高度值
	 */
	- (CGFloat)getCurrentScreenHeight;

	/**
	 *  得到屏幕亮度
	 *
	 *  @return 0-1
	 */
	- (CGFloat)getScreenBrightness;
	/**
	 *  屏幕分辨率
	 *
	 *  @return 
	 */
	- (NSString *)screenResolution;
	/**
	 *  得到当前屏幕dpi
	 *
	 *  @return return value description
	 */
	- (CGFloat)getScreenDpi;

<b>5、ZGNetWorkInfo    </b>

	/**
	 *  得到当前wifi列表
	 *
	 *  @return wifi列表,经测试，这里只是返回了当前连接wifi的信息
	 */
	- (NSMutableArray *)getWifiListArr;


	/**
	 *  当前设备是否联网
	 *
	 *  @return YES表示联网，NO表示没有联网
	 */
	- (BOOL)isConnectionNetWork;


	/**
	 *  得到当前网络状态
	 *
	 *  @return 返回 NetWorkStaus枚举
	 */
	- (NetWorkReachStatus)getNetWorkStaus;
	
6、ZGJailBreak    
	
	/**
	 *  是否越狱
	 *
	 *  @return YES表示已经越狱，NO表示没有越狱
	 */
	+ (BOOL)isJailBreak;


7、ZGLocationInfo


	/**
	 *  得到设备当前的位置,block回调里面已经包含了CLPlacemark里面包含了你需要的信息，需要自取
	 *  详细可以参考CLPlacemark类属性
	 *
	 *  @return CLLocation
	 */
	- (void)getCurrentLocation:(ChangeLocationBlock)block;

<b>8、ZGProjectInfo  </b>


	/**
	 *  得到当前项目版本
	 *
	 *  @return 当前版本
	 */
	- (NSString *)getProjectVersion;

	/**
	 *  得到当前项目构建版本号
	 *
	 *  @return 当前构建版本
	 */
	- (NSString *)getProjectBuildVersion;



	/**
	 *  得到当前项目名称
	 *
	 *  @return 当前名称
	 */
	- (NSString *)getProjectName;

<b>9、ZGDeviceVPNInfo  </b>

	/**
 	get current link vpn status

	 @return devicelinkvpnstatus
	 */
	+ (DeviceLinkVPNStatus)getCurrentDeviceLinkVpnSataus;



	/**
 	judge device connected vpn or not

	 @return YES:Connected,NO:not connected
 	*/
	+ (BOOL)isVPNConnected;


<b>10、ZGPhoneOperatorInfo  </b>
	/**
	 得到当前手机所属运营商名称，如果没有则为nil

	 @return 返回运营商名称
	 */
	+ (NSString *)getCurrentPhoneOperatorName;


	/**
	 得到当前手机号的国家代码,如果没有则为nil

	 @return 返回国家代码
	 */
	+ (NSString *)getCurrentISOCountryCode;

	/**
	 得到移动国家码

	 @return 返回移动国家码
	 */
	+ (NSString *)getMobileCountryCode;
	
#### 更新记录
<table>
    <tr>
        <td>序号</td>
	<td>更新内容</td>
	<td>更新时间</td>
	<td>备注</td>
    </tr>
    <tr>
        <td>1</td>
	<td>添加位置信息定位</td>
	<td>2016年8月19日</td>
	<td>详见7</td>
    </tr>
    <tr>
        <td>2</td>
	<td>添加网络和项目信息</td>
	<td>2016年8月24日</td>
	<td>详见5,8</td>
    </tr>
   <tr>
        <td>3</td>
	<td>添加Cocoapods支持 </td>
	<td>2016年10月27日</td>
	<td></td>
    </tr>
    <tr>
        <td>4</td>
	<td>添加网络代理查询以及VPN信息 </td>
	<td>2017年6月19日</td>
	<td></td>
    </tr>
    <tr>
        <td>5</td>
	<td>添加手机运营商信息  </td>
	<td>2017年7月6日</td>
	<td></td>
    </tr>
   <tr>
        <td>6</td>
	<td>拿到设备信息添加iPhone X   </td>
	<td>2017年11月17日</td>
	<td></td>
    </tr>
</table>

#### 附
有问题QQ群交流：206613455
