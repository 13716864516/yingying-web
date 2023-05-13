<?php

// +----------------------------------------------------------------------
// | Created by Wanyue
// +----------------------------------------------------------------------
// | Copyright (c) 2017~2019 http://www.sdwanyue.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: https://gitee.com/WanYueKeJi
// +----------------------------------------------------------------------
// | Date: 2020/09/01 09:22
// +----------------------------------------------------------------------
namespace App\Api;

use App\Domain\Cart as Domain_Cart;
use App\Domain\Teacher as Domain_Teacher;
use PhalApi\Api;
use App\Domain\Course as Domain_Course;
use App\Model\User as Model_Users;
use App\Model\CourseCopy as Model_Course_Copy;

header("Access-Control-Allow-Origin: *");

/**
 * 课程
 */
class CourseCopy extends Api
{

    public function getCourseTime()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());
        $courseTime = $this->getCourseTimePublic();
//        [
//            ['index'=>'08:45\n10:15', 'name'=> '' ],
//            ['index'=>'10:30\n12:00', 'name'=> '' ],
//            ['index'=>'13:30\n15:00', 'name'=> '' ],
//            ['index'=>'15:15\n16:45', 'name'=> '' ],
//            ['index'=>'17:00\n18:30', 'name'=> '' ],
//            ['index'=>'19:00\n20:30', 'name'=> '' ],
//        ];
        foreach ($courseTime as &$v) {
            $v = [
                'index' => $v['startcoursetime'].PHP_EOL.$v['endcoursetime'],
                'name' => ''
            ];
        }

        $rs['info'] = $courseTime;

        return $rs;
    }

    public function getCourseTimePublic()
    {

        $courseTime = [
            '0'  => ['startcoursetime'=>'08:45', 'endcoursetime'=>'10:15'],
            '1'  => ['startcoursetime'=>'10:30', 'endcoursetime'=>'12:00'],
            '2'  => ['startcoursetime'=>'13:30', 'endcoursetime'=>'15:00'],
            '3'  => ['startcoursetime'=>'15:15', 'endcoursetime'=>'16:45'],
            '4'  => ['startcoursetime'=>'17:00', 'endcoursetime'=>'18:30'],
            '5'  => ['startcoursetime'=>'19:00', 'endcoursetime'=>'20:30'],
        ];

        return $courseTime;
    }

    public function getWeeks()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());
        $weeks = $this->getWeeksPublic();

        $rs['info'] = $weeks;

        return $rs;
    }

    protected function getWeeksPublic($k = '')
    {
        $weeks = [ // 和后台（0=天）有区别
            '0'  => '一',
            '1'  => '二',
            '2'  => '三',
            '3'  => '四',
            '4'  => '五',
            '5'  => '六',
            '6'  => '天',
        ];

        if ($k === '') {
            return $weeks;
        }
        return $weeks[$k] ?? '';
    }

    /**
     * 获取教室
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getClassrooms($k = '')
    {
        $classrooms = [
            '1' => '大教室',
            '2' => '小教室',
        ];

        if ($k === '') {
            return $classrooms;
        }
        return $classrooms[$k] ?? '';
    }

    /**
     * 科目分类
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getClassPublic()
    {
        $domain = new Domain_Course();
        $list   = $domain->getClass();
        return $list;
    }

    /**
     * 获取课程学生关系表的学习状态，0未学习 1学习中(已签到) 2已学完(已上传作品）
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getCourseCopyUsersStep($k = '')
    {
        $CourseCopyUsersStep = [
            '-1'  => '未排课',
            '0'  => '未学习',
            '1'  => '已签到',
            '2'  => '已上传作品',
        ];

        if ($k === '') {
            return $CourseCopyUsersStep;
        }
        return $CourseCopyUsersStep[$k] ?? '';
    }

    /**
     * 获取本周所有日期
     */
    public function getWeekDate(){ // 上周=-1 本周=0 下周=1
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $weeknum       = \App\checkNull($this->weeknum) ?? 0;

        $date = $this->getWeekDatePublic($weeknum);

        $date = array_map(function ($item) { return substr($item, -2);}, $date);

        $rs['info'] = $date;

        return $rs;
    }

    /**
     * 通过周几获取时间
     */
    public function getTimeByWeekNum($weeknum = 0){ // 上周=-1 本周=0 下周=1

        $time = time()+(60*60*24*7)*($weeknum);

        return $time;
    }

    /**
     * 获取本周所有日期
     */
    public function getWeekDatePublic($weeknum = 0){ // 上周=-1 本周=0 下周=1

        $time = $this->getTimeByWeekNum($weeknum);
        //获取当前周几
        $week = date('w', $time);
        $date = [];
        for ($i=0; $i<7; $i++){
            $date[$i] = date('Y-m-d' ,strtotime( '+' . ($i+1)-$week .' days', $time));
        }

        return $date;
    }

    /**
     * 获取年月
     */
    public function getYearMonth(){ // 上周=-1 本周=0 下周=1
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $weeknum       = \App\checkNull($this->weeknum) ?? 0;

        $time = $this->getTimeByWeekNum($weeknum);
        //获取年月
        $yearmonth = date('Y年m月', $time);
        $rs['info'] = $yearmonth;

        return $rs;
    }

    /**
     * 获取课表
     */
    public function getTimeTables(){
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $weeknum       = \App\checkNull($this->weeknum) ?? 0;

        $modelusers = new Model_Users();
        $userinfo   = $modelusers->getUsersInfo('id = '.$uid);
        $usertype   = $userinfo['type'];

        $date = $this->getWeekDatePublic($weeknum);
        $coursetime = $this->getCourseTimePublic();
        $timetables = [];
        $startcoursetimes = array_column($coursetime, 'startcoursetime');
        $modelcoursecopy = new Model_Course_Copy();
        foreach ($date as $v) {
            foreach ($startcoursetimes as $vv) {
                $mintime = $mintime??$v.' '.$vv;
                $timetables[$v][$v.' '.$vv] = '';
                $maxtime = $v.' '.$vv;
            }
        }
        $mintime = strtotime($mintime);
        $maxtime = strtotime($maxtime);

        /* 课程分类 */
        $Domain_Course = new Domain_Course();
        $courseclass = $Domain_Course->getClass();
        $classs_new = [];
        foreach ($courseclass as &$v) {
            $len = mb_strlen($v['name']);
            if ($len > 5) {
                $v['name'] = mb_substr($v['name'],0,3);
            } elseif ($len > 3) {
                $v['name'] = mb_substr($v['name'],0,2);
            }
            $classs_new[$v['id']] = $v['name'];
        }

        if ($usertype) { // 老师
            $where = 'uid = '.$uid.' and status = 1 and starttime >= '.$mintime.' and starttime <= '.$maxtime;
            $coursecopy = $modelcoursecopy->getList($where, '', '', 1000);
        } else { // 学生
            $where = [
                'uid' => $uid,
                'status' => 1,
            ];
            $coursecopyusers = $modelcoursecopy->getCourseCopyUsersList(1, $where, 'id desc');
            $courseids = array_unique(array_column($coursecopyusers, 'courseid'));
            $courseids = implode(',', $courseids);
            if ($courseids) {
                $where = 'status = 1 and starttime >= '.$mintime.' and starttime <= '.$maxtime.' and id in ('.$courseids.')';
                $coursecopy = $modelcoursecopy->getList($where, '', '', 1000);
            } else {
                $coursecopy = [];
            }
        }
        $timetableskey = $timetables;
        foreach ($coursecopy as $k => &$v) {
            $startdate = date('Y-m-d', $v['starttime']);
            $startdatetime = date('Y-m-d H:i', $v['starttime']);
            $timetables[$startdate][$startdatetime] = $classs_new[$v['classid']];
            $timetableskey[$startdate][$startdatetime] = $v['id'];
        }
        foreach ($timetables as $k => $v) {
            $timetables[$k] = array_values($v);
        }
        foreach ($timetableskey as $k => $v) {
            $timetableskey[$k] = array_values($v);
        }
        $rs['info']['value'] = array_values($timetables);
        $rs['info']['key'] = array_values($timetableskey);

        return $rs;
    }

    public function getRules()
    {
        return array(
            'getYearMonth' => array(
                'weeknum' => array('name' => 'weeknum', 'type' => 'int', 'require' => true, 'desc' => '第几周'),
            ),
            'getWeekDate' => array(
                'weeknum' => array('name' => 'weeknum', 'type' => 'int', 'require' => true, 'desc' => '第几周'),
            ),
            'getTimeTables' => array(
                'weeknum' => array('name' => 'weeknum', 'type' => 'int', 'require' => true, 'desc' => '课表'),
            ),
            'getClassCourse' => array(
                'gradeid' => array('name' => 'gradeid', 'type' => 'int', 'desc' => '学级分类ID'),
                'classid' => array('name' => 'classid', 'type' => 'int', 'desc' => '科目分类ID'),
                'p'       => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'getList' => array(
                'gradeid' => array('name' => 'gradeid', 'type' => 'int', 'desc' => '学级分类ID'),
                'type'    => array('name' => 'type', 'type' => 'int', 'desc' => '类型，0精选内容1好课推荐2直播课堂'),
                'p'       => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'search' => array(
                'gradeid' => array('name' => 'gradeid', 'type' => 'int', 'desc' => '学级分类ID'),
                'keyword' => array('name' => 'keyword', 'type' => 'string', 'desc' => '关键词'),
                'p'       => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'getDetail' => array(
                'courseid' => array('name' => 'courseid', 'type' => 'int', 'desc' => '课程ID'),
            ),

            'checkPass' => array(
                'courseid' => array('name' => 'courseid', 'type' => 'int', 'desc' => '课程ID'),
                'pass'     => array('name' => 'pass', 'type' => 'string', 'desc' => '密码'),
            ),

            'buy' => array(
                'courseid' => array('name' => 'courseid', 'type' => 'int', 'desc' => '课程ID'),
                'payid'    => array('name' => 'payid', 'type' => 'int', 'desc' => '支付方式ID'),
            ),

            'getLessonList' => array(
                'courseid' => array('name' => 'courseid', 'type' => 'int', 'desc' => '课程ID'),
            ),

            'getMyCourse' => array(
                'type'    => array('name' => 'type', 'type' => 'int', 'desc' => '类型0全部1未开始2学习中3已学完'),
                'keyword' => array('name' => 'keyword', 'type' => 'string', 'desc' => '关键词'),
                'p'       => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'getTeacherCourse' => array(
                'gradeid' => array('name' => 'gradeid', 'type' => 'int', 'desc' => '学级分类ID'),
                'touid'   => array('name' => 'touid', 'type' => 'int', 'desc' => '讲师ID'),
                'p'       => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'getMyBuy' => array(
                'sort' => array('name' => 'sort', 'type' => 'int', 'desc' => '0内容 2直播'),
                'p'    => array('name' => 'p', 'type' => 'int', 'desc' => '页码'),
            ),

            'setGrade' => array(
                'gradeid' => array('name' => 'gradeid', 'type' => 'int', 'desc' => '学级分类ID'),
            ),
            'setLesson' => array(
                'courseid' => array('name' => 'courseid', 'type' => 'int', 'desc' => '课程ID'),
                'lessonid' => array('name' => 'lessonid', 'type' => 'int', 'desc' => '课时ID'),
            ),
            'getNewsDetail' => array(
                'newsid' => array('name' => 'newsid', 'type' => 'int', 'desc' => '新闻id'),
            ),

        );
    }

    /**
     * 科目分类
     * @desc 用于获取科目分类
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string info[].id
     * @return string info[].name 名称
     * @return string info[].thumb  图标
     * @return string msg 提示信息
     */
    public function getClass()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $domain = new Domain_Course();
        $list   = $domain->getClass();

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 科目分类下课程
     * @desc 用于获取某科目分类下课程
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string info[].id 课程ID
     * @return string info[].uid 教师ID
     * @return string info[].user_nickname 教师昵称
     * @return string info[].avatar 教师头像
     * @return string info[].sort 类别，0内容1课程2直播
     * @return string info[].type 形式，1图文2视频3音频
     * @return string info[].name 名称
     * @return string info[].thumb 封面
     * @return string info[].paytype 获取形式，0免费1收费2密码
     * @return string info[].payval 价格位置显示内容，根据paytype区分颜色
     * @return string info[].lesson 课时位置显示内容
     * @return string info[].islive 是否在直播，0否1是
     * @return string msg 提示信息
     */
    public function getClassCourse()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $gradeid = \App\checkNull($this->gradeid);
        $classid = \App\checkNull($this->classid);
        $p       = \App\checkNull($this->p);
        if ($classid < 1) {
            return $rs;
        }

        $nowtime = time();

        $where = [
            'status>=?'     => 1,
            'shelvestime<?' => $nowtime,
            'classid'       => $classid,
            'gradeid'       => $gradeid,
            'sort != ?'     => 1
        ];

        $domain = new Domain_Course();
        $list   = $domain->getList($p, $where);

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 课程列表
     * @desc 用于课程列表
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string info[].id 昵称
     * @return string info[].user_nickname 昵称
     * @return string info[].avatar 头像
     * @return string info[].sex 性别
     * @return string info[].age 年龄
     * @return string msg 提示信息
     */
    public function getList()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $type    = \App\checkNull($this->type);
        $gradeid = \App\checkNull($this->gradeid);
        $p       = \App\checkNull($this->p);

        if (!$type) {
            $type = 0;
        }

        $nowtime = time();

        $where = [
            'gradeid'       => $gradeid,
            'status>=?'     => 1,
            'shelvestime<?' => $nowtime,
        ];
        if ($type >= 2) {
            $where['sort>=?'] = 2;
        } else {
            $where['sort'] = $type;
        }

        $domain = new Domain_Course();
        $list   = $domain->getList($p, $where);

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 搜索课程
     * @desc 用于首页搜索课程
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string info[].id 昵称
     * @return string info[].user_nickname 昵称
     * @return string info[].avatar 头像
     * @return string info[].sex 性别
     * @return string info[].age 年龄
     * @return string msg 提示信息
     */
    public function search()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $gradeid = \App\checkNull($this->gradeid);
        $keyword = \App\checkNull($this->keyword);
        $p       = \App\checkNull($this->p);

        if ($keyword == '') {
            $rs['code'] = 1001;
            $rs['msg']  = \PhalApi\T('请输入关键词');
            return $rs;
        }

        $nowtime = time();

        $where = [
            'gradeid'       => $gradeid,
            'status>=?'     => 1,
            'shelvestime<?' => $nowtime,
            'uid!=?'        => $uid,
            'name like ?'   => '%' . $keyword . '%',
        ];

        $domain = new Domain_Course();
        $list   = $domain->getList($p, $where);

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 课程详情
     * @desc 用于课程详情
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string info[].paytype 获取形式，0免费1收费2密码
     * @return string info[].ifbuy 是否购买，0否1是
     * @return string info[].views 学习人数
     * @return string info[].des 简介
     * @return string info[].trialtype 试学方式，0无1链接2时间进度
     * @return string info[].trialval  trialtype=1是链接，trialtype=2是时间秒数
     * @return string info[].url 视频/语音链接
     * @return string info[].add_time 时间日期
     * @return string info[].star 课程评级星级
     * @return string info[].islive 是否直播0否1是
     * @return string info[].intr 听课指南
     * @return object info[].userinfo 讲师信息
     * @return string info[].ispack 是否有套餐0否1是
     * @return string info[].iscart 是否加入购物车0否1是
     * @return array  info[].tutor 辅导老师列表
     * @return string info[].tutor[] 老师信息
     * @return string msg 提示信息
     */
    public function getDetail()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid      = \App\checkNull($this->uid);
        $token    = \App\checkNull($this->token);
        $courseid = \App\checkNull($this->courseid);

        if($uid>0){
            $checkToken=\App\checkToken($uid,$token);
            if($checkToken==700){
                $rs['code'] = $checkToken;
                $rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
                return $rs;
            }
        }

        if ($courseid < 1) {
            $rs['code'] = 1001;
            $rs['msg']  = \PhalApi\T('信息错误');
            return $rs;
        }

        $where   = [
            'status'      => 1,
            'id'            => $courseid
        ];

        $model = new Model_Course_Copy();
        $info  = $model->getDetail($where);

        if (!$info) {
            $rs['code'] = 1002;
            $rs['msg']  = \PhalApi\T('课程不存在');
            return $rs;
        }

        $classs = $this->getClassPublic();
        $classs = array_column($classs, null, 'id');
        $info['classname'] =  $classs[$info['classid']]['name'];

        $w = date('w', $info['starttime']);
        $w = $this->getweeksPublic($w);
        $info['courserange'] =  date('Y.m.d', $info['starttime']).'（周'.$w.'）'.date('H:i', $info['starttime']).'-'.date('H:i', $info['endtime']);


        $info['classroomname'] = $this->getClassrooms($info['classroomid']);

        $students = \PhalApi\DI()->notorm->course_copy_users
            ->select('*')
            ->where([
                'status' => 1,
                'courseid' => $info['id'],
            ])
            ->fetchAll();

        $coursecopyusersstep     = $this->getCourseCopyUsersStep();
        foreach ($students as &$stu) {
            $stu['stepname'] = $coursecopyusersstep[$stu['step']];
            $userinfo = \PhalApi\DI()->notorm->users
                ->select("user_nickname,avatar_thumb")
                ->where('id=?',$stu['uid'])
                ->fetchOne();
            $stu['user_nickname'] = $userinfo['user_nickname'];
            $stu['avatar_thumb'] = \App\get_upload_path($userinfo['avatar_thumb']);
            $stu['signtime'] = date('Y-m-d H:i', $stu['signtime']);
        }
        $info['list'] = $students;
        $info['stunum'] = count($students);

        //处理介绍和详情中富文本图片路径
        $style           = "display:inline-block;width:353px;height:220px;margin:0 auto;";
        $info['content'] = \App\replaceImgFromUeditor($style, $info['content']);
        $info['info']    = \App\replaceImgFromUeditor($style, $info['info']);

        $Domain_Teacher   = new Domain_Teacher();
        $userinfo         = $Domain_Teacher->getInfo($uid, $info['uid']);
        $info['userinfo'] = \App\handleUser($userinfo);
        $ifbuy            = '0';
        $paytype          = $info['paytype'];
        if ($paytype != 0) {
            $where2 = [
                'uid'      => $uid,
                'courseid' => $info['id'],
                'status'   => 1,
            ];
            $ispay  = $model->getBuy($where2);
            if ($ispay) {
                $ifbuy = '1';
            }
        }

        $info['isbuy'] = $ifbuy;
        $info['ifbuy'] = $ifbuy;
        $info['url']   = \App\encryption(\App\get_upload_path($info['url']));

        unset($info['uptime']);

        /* 辅导老师 */
        $tutor = [];
        if ($info['tutoruid'] > 0) {
            $tutoruidinfo = $Domain_Teacher->getInfo($uid, $info['tutoruid']);
            $tutor[]      = \App\handleUser($tutoruidinfo);
        }
        unset($info['tutoruid']);
        $info['tutor'] = $tutor;

        /* 是否购物车 */
        $iscart = '0';
        if ($uid > 0) {
            $Domain_Cart = new Domain_Cart();
            $where4      = [
                'uid'    => $uid,
                'type'   => 0,
                'typeid' => $info['id'],
            ];
            $isexist     = $Domain_Cart->getNums($where4);
            if ($isexist) {
                $iscart = '1';
            }
        }

        $info['iscart'] = $iscart;

        $rs['info'] = $info;

        return $rs;
    }

    /* 处理课程信息 */
    protected function handelInfo($v)
    {
        $v['thumb'] = \App\get_upload_path($v['thumb']);
        $payval     = '免费';
        $lesson     = '';
        $sort       = $v['sort'];
        /* 内容 */
        if ($sort == 0) {
            $lesson = $this->getTypes($v['type']);
        }

        /* 课程 */
        if ($sort == 1) {
            if ($v['lessons'] > 0) {
                $lesson = $v['lessons'] . '课时';
            }
        }

        /* 直播 */
        if ($sort >= 2) {
            if ($v['islive'] == 0) {
                $lesson = \App\handelsvctm($v['starttime']);
            }
            if ($v['islive'] == 1) {
                $lesson = '正在直播';
            }
            if ($v['islive'] == 2) {
                $lesson = '直播结束';
            }
        }

        $paytype = $v['paytype'];
        if ($paytype == 1) {
            $payval = $v['payval'];
        }

        if ($paytype == 2) {
            $payval = '密码';
        }

        $v['payval'] = $payval;
        $v['lesson'] = $lesson;
        unset($v['status']);
        unset($v['shelvestime']);
        unset($v['lessons']);
        unset($v['starttime']);

        if (isset($v['addtime'])) {
            $v['add_time'] = date('Y-m-d', $v['addtime']);
        }

        return $v;
    }

    /**
     * 确认密码
     * @desc 用于输入密码后进行确认
     * @return int code 操作码，0表示成功
     * @return array info 列表
     * @return string msg 提示信息
     */
    public function checkPass()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid      = \App\checkNull($this->uid);
        $token    = \App\checkNull($this->token);
        $courseid = \App\checkNull($this->courseid);
        $pass     = \App\checkNull($this->pass);

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        if ($courseid < 1) {
            $rs['code'] = 1001;
            $rs['msg']  = \PhalApi\T('信息错误');
            return $rs;
        }

        if ($pass == '') {
            $rs['code'] = 1001;
            $rs['msg']  = \PhalApi\T('请输入密码');
            return $rs;
        }


        $domain = new Domain_Course();
        $res    = $domain->checkPass($uid, $pass, $courseid);

        return $res;
    }

    /**
     * 课时列表
     * @desc 用于获取课时列表
     * @return int code 操作码，0表示成功
     * @return array info
     * @return string info[].name 名称
     * @return array  info[].list 课时列表
     * @return string info[].list[].name 名称
     * @return string info[].list[].type 形式，1图文2视频3音频4ppt直播5视频直播6音频直播7授课直播（白板）
     * @return string info[].list[].istrial 是否试学，0否1是
     * @return string info[].list[].url 音频链接/视频链接/ 当type=4 url!=''  为回访
     * @return string info[].list[].status 状态 0正常 1试学2已学完3正在直播4锁
     * @return string info[].list[].islive 是否在直播 0否1是2已结束
     * @return string info[].list[].isenter 是否可看 0否1是
     * @return string info[].list[].islast 是否上次学到 0否1是
     * @return string info[].list[].time_date 开播时间
     * @return string info[].list[].uid 讲师ID
     * @return string info[].list[].courseid 课程ID
     * @return string msg 提示信息
     */
    public function getLessonList()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid      = \App\checkNull($this->uid);
        $token    = \App\checkNull($this->token);
        $courseid = \App\checkNull($this->courseid);

        if ($uid < 1 || $courseid < 1) {
            $rs['code'] = 1001;
            $rs['msg']  = \PhalApi\T('信息错误');
            return $rs;
        }

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }


        $domain = new Domain_Course();
        $list   = $domain->getLessonList($uid, $courseid);

        $rs['info'] = $list;

        return $rs;
    }


    /**
     * 已购买的课程
     * @desc 用于个人中心获取已购买的课程
     * @return int code 操作码，0表示成功
     * @return array info 同其他课程列表
     * @return string info[].payval
     * @return string msg 提示信息
     */
    public function getMyBuy()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid   = \App\checkNull($this->uid);
        $token = \App\checkNull($this->token);
        $sort  = \App\checkNull($this->sort);
        $p     = \App\checkNull($this->p);

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $domain = new Domain_Course();
        $list   = $domain->getMyBuy($uid, $sort, $p);

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 某讲师课程
     * @desc 用于获取某讲师课程列表
     * @return int code 操作码，0表示成功
     * @return array info 同其他课程列表
     * @return string msg 提示信息
     */
    public function getTeacherCourse()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $token   = \App\checkNull($this->token);
        $gradeid = \App\checkNull($this->gradeid);
        $touid   = \App\checkNull($this->touid);
        $p       = \App\checkNull($this->p);

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $nowtime = time();
        $where   = [
            'status>=?'     => 1,
            'shelvestime<?' => $nowtime,
            'uid'           => $touid,
        ];

        $domain = new Domain_Course();
        $list   = $domain->getList($p, $where);

        $rs['info'] = $list;

        return $rs;
    }

    /**
     * 获取默认学级分类
     * @desc 用于游客模式获取默认学级分类
     * @return int code 操作码，0表示成功
     * @return array  info
     * @return string info[0].id
     * @return string info[0].name 名称
     * @return string msg 提示信息
     */
    public function getGradeDef()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $domain = new Domain_Course();
        $res    = $domain->getGradeDef();

        return $res;
    }

    /**
     * 学级分类
     * @desc 用于获取课程学级分类
     * @return int code 操作码，0表示成功
     * @return array  info 列表
     * @return string info[].id
     * @return string info[].name 名称
     * @return array  info[].list 二级分类
     * @return string info[].list[].id 二级分类ID
     * @return string info[].list[].name 二级分类名称
     * @return string msg 提示信息
     */
    public function getGrade()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $domain = new Domain_Course();
        $list   = $domain->getGrade();

        $rs['info'] = $list;

        return $rs;
    }


    /**
     * 设置学级分类
     * @desc 用于设置学级分类
     * @return int code 操作码，0表示成功
     * @return string msg 提示信息
     */
    public function setGrade()
    {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid     = \App\checkNull($this->uid);
        $token   = \App\checkNull($this->token);
        $gradeid = \App\checkNull($this->gradeid);

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $domain = new Domain_Course();
        $res    = $domain->setGrade($uid, $gradeid);

        return $res;
    }

    /**
     * 我的课程
     * @desc 用于获取我的课程
     * @return int code 操作码，0表示成功
     * @return array info 同其他课程列表
     * @return string info[].payval
     * @return string msg 提示信息
     */
    public function getMyCourse() {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid=\App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $type=\App\checkNull($this->type);
        $keyword=\App\checkNull($this->keyword);
        $p=\App\checkNull($this->p);

        $checkToken=\App\checkToken($uid,$token);
        if($checkToken==700){
            $rs['code'] = $checkToken;
            $rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $domain = new Domain_Course();
        $list = $domain->getMyCourse($uid,$type,$keyword,$p);

        $rs['info']=$list;

        return $rs;
    }


    /**
     * 更新课时学习进度(UNIAPP端使用)
     * @desc 用户更新课时进度
     * @return int code 操作码 0表示成功
     * @return string msg 提示信息
     */
    public function setLesson() {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid = \App\checkNull($this->uid);
        $token=\App\checkNull($this->token);
        $courseid = \App\checkNull($this->courseid);
        $lessonid = \App\checkNull($this->lessonid);

        $checkToken=\App\checkToken($uid,$token);
        if($checkToken==700){
            $rs['code'] = $checkToken;
            $rs['msg'] = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $domain = new Domain_Course();
        $res = $domain->setLesson($uid, $courseid, $lessonid);

        return $res;
    }

    /*
 * 获取新闻列表
 * @desc 用于获取新闻列表
 * @return int code 操作码 0 表示成功
 * @return array 新闻列表
 */
    public function getNews() {
        $rs = array('code' => 0, 'msg' => '', 'info' => array());
        $domain = new Domain_Course();
        $list   = $domain->getNews();

        $rs['info'] = $list;

        return $rs;

    }


    /**
     * 获取新闻详情
     * @desc 用于获取新闻详情
     * @return int code 操作码 0 表示成功
     * @return array 新闻详情
     */
    public function getNewsDetail() {

        $rs = array('code' => 0, 'msg' => '', 'info' => array());

        $uid      = \App\checkNull($this->uid);
        $token    = \App\checkNull($this->token);
        $newsid = \App\checkNull($this->newsid);

        $checkToken = \App\checkToken($uid, $token);
        if ($checkToken == 700) {
            $rs['code'] = $checkToken;
            $rs['msg']  = \PhalApi\T('您的登陆状态失效，请重新登陆！');
            return $rs;
        }

        $domain = new Domain_Course();
        $rs['info']    = $domain->getNewsDetail($newsid);

        return $rs;

    }



}
