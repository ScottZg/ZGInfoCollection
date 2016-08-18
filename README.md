#### 前言
获取iPhone相关信息、电池信息、屏幕信息、越狱状态以及网络状态等。

####详细介绍
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

5、ZGNetWorkInfo    

	
	/**
	 *  得到当前wifi列表
	 *
	 *  @return wifi列表,经测试，这里只是返回了当前连接wifi的信息
	 */
	- (NSMutableArray *)getWifiListArr;
	
6、ZGJailBreak    
	
	/**
	 *  是否越狱
	 *
	 *  @return YES表示已经越狱，NO表示没有越狱
	 */
	+ (BOOL)isJailBreak;


####更新记录

暂无