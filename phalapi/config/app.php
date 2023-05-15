<?php
/**
// +----------------------------------------------------------------------
// | 万岳科技开源系统 [由山东万岳信息科技有限公司提供]
// +----------------------------------------------------------------------
// | 版权所有 © 2020~2022 https://git.sdwanyue.com，保留所有权利
// +----------------------------------------------------------------------
// | 本开源系统为万岳科技提供的教育行业解决方案，旨在帮助教育机构快速搭建高效便捷的教学管理系统
// +----------------------------------------------------------------------
// | 该开源系统可免费学习使用或自用运营，但在展示前端内容时需注明“代码来源于万岳科技开源项目”，并且不得使用万岳科技相关信息！
// +----------------------------------------------------------------------
// | 作者：万岳科技开源官方 wanyuekj2020@163.com
// +----------------------------------------------------------------------

 * 请在下面放置任何您需要的应用配置
 *
 * @license     http://www.phalapi.net/license GPL 协议
 * @link        http://www.phalapi.net/
 * @author dogstar <chanzonghuang@gmail.com> 2017-07-13
 */

return array(

    /**
     * 应用接口层的统一参数
     */
    'apiCommonRules' => array(
        'uid' => array('name' => 'uid', 'type' => 'int', 'default'=>'0'),
        'token' => array('name' => 'token', 'type' => 'string', 'default'=>''),
        'model' => array('name' => 'model', 'type' => 'string', 'default'=>''),
        'system' => array('name' => 'system', 'type' => 'string', 'default'=>''),
        'version' => array('name' => 'version', 'type' => 'string', 'default'=>''),
        'lang' => array('name' => 'lang', 'type' => 'string', 'default'=>''),
    ),

    /* redis信息 */
    'REDIS_HOST' => 'ddos.hyj-kj.cn',
    'REDIS_AUTH' => '123456aA',
    'REDIS_PORT' => "6379",
    'REDIS_SELECT' => "20",/* REDIS_SELECT的数字可以自定义【作用：宝塔中有创建有多个站点多个项目，使用redis时进行区分，防止出现搭建错误】，确保其他代码文件配置REDIS_SELECT时填写的数字一致即可 */
    
    /* 接口签名key */
    'sign_key' => '400d069a791d51ada8af3e6c2979bcd7',
    
	/* 密码加密key */
	"authcode" => 'uV1sDvmUeV9Lcva00i',
    
    /* 存储方式 0本地 1七牛*/
    'uptype' => "1",

    /**
     * 七牛相关配置
     */
    'Qiniu' =>  array(
        //ak
        'access_key' => 'AOq2WgLZ8q5GTCGs0ImgapFNLmsWO1Vdz6yynhbn',
        //sk
        'secret_key' => 'nJiy3opXviRDNRpFi0aAXq5LB8nO2j09ITILQjw0',
        //存储空间
        'space_bucket' => 'yuanqiyang',
        //cdn加速域名 格式：http(s)://a.com
        'space_host' => 'http://cname.hyj-kj.cn',
        // 上传文件名前缀
        'preffix' => '', 
        //区域上传域名(服务端)  https://developer.qiniu.com/kodo/manual/1671/region-endpoint  非华东需配置
        'upload_url' => 'https://up-z2.qiniup.com', // 非华东需配置
    ),
    
    /**
     * 接口服务白名单，格式：接口服务类名.接口服务方法名
     *
     * 示例：
     * - *.*         通配，全部接口服务，慎用！
     * - Site.*      Api_Default接口类的全部方法
     * - *.Index     全部接口类的Index方法
     * - Site.Index  指定某个接口服务，即Api_Default::Index()
     */
    'service_whitelist' => array(
        'Site.Index',
    ),
);
