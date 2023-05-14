<?php

// +----------------------------------------------------------------------
// | Created by Wanyue
// +----------------------------------------------------------------------
// | Copyright (c) 2017~2019 http://www.sdwanyue.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: https://gitee.com/WanYueKeJi
// +----------------------------------------------------------------------
// | Date: 2020/10/15 09:08
// +----------------------------------------------------------------------
namespace app\admin\controller;

use app\admin\model\CourseCopyModel;
use app\admin\model\CourseCopyUsersModel;
use app\admin\model\UsersModel;
use cmf\controller\AdminBaseController;
use think\Db;

/**
 * 课程
 * @package app\admin\controller
 */
class CourseguideController extends AdminBaseController
{
    /**
     * 获取上课时间
     * @param string $k 键
     * @return array|mixed|string
     */
    public function getCourseTime($k = '')
    {
        $courseTime = [
            '0'  => ['startcoursetime'=>'08:45', 'endcoursetime'=>'10:15'],
            '1'  => ['startcoursetime'=>'10:30', 'endcoursetime'=>'12:00'],
            '2'  => ['startcoursetime'=>'13:30', 'endcoursetime'=>'15:00'],
            '3'  => ['startcoursetime'=>'15:15', 'endcoursetime'=>'16:45'],
            '4'  => ['startcoursetime'=>'17:00', 'endcoursetime'=>'18:30'],
            '5'  => ['startcoursetime'=>'19:00', 'endcoursetime'=>'20:30'],
        ];

        if ($k === '') {
            return $courseTime;
        }
        return $courseTime[$k] ?? '';
    }
    /**
     * 获取课程状态
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getStatus($k = '')
    {
        $status = [
            '-2' => '管理员下架',
            '-1' => '暂时下架',
            '0'  => '审核中',
            '1'  => '上架中',
            '2'  => '定时上架',
        ];

        if ($k === '') {
            return $status;
        }
        return $status[$k] ?? '';
    }

    /**
     * 获取性别;0:保密,1:男,2:女
     * @param string $k 键
     * @return array|mixed|string
     */
    public function getSex($k = '')
    {
        $sex = [
            '0'  => '保密',
            '1'  => '男',
            '2'  => '女',
        ];

        if ($k === '') {
            return $sex;
        }
        return $sex[$k] ?? '';
    }

    protected function getWeeks($k = '')
    {
        $weeks = [
            '1'  => '周一',
            '2'  => '周二',
            '3'  => '周三',
            '4'  => '周四',
            '5'  => '周五',
            '6'  => '周六',
            '0'  => '周天',
        ];

        if ($k === '') {
            return $weeks;
        }
        return $weeks[$k] ?? '';
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
     * 类别
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getSort($k = '')
    {
        $sort = [
            '0' => '内容',
            '1' => '课程',
            '2' => '直播',
        ];
        if ($k === '') {
            return $sort;
        }
        return $sort[$k] ?? '';
    }

    /**
     * 内容形式
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getTypes($k = '')
    {
        $type = [
            '1' => '图文',
            '2' => '视频',
            '3' => '音频',
        ];
        if ($k === '') {
            return $type;
        }
        return $type[$k] ?? '';
    }

    /**
     * 直播形式
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getLiveTypes($k = '')
    {
        $type = [
            '1' => 'PPT',
            '2' => '视频',
            '3' => '音频',
        ];
        if ($k === '') {
            return $type;
        }
        return $type[$k] ?? '';
    }

    /**
     * 获取方式
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getPayTypes($k = '')
    {
        $paytype = [
            '0' => '免费',
            '1' => '收费',
            '2' => '密码',
        ];
        if ($k === '') {
            return $paytype;
        }
        return $paytype[$k] ?? '';
    }

    /**
     * 试学
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getTrialTypes($k = '')
    {
        $trialtype = [
            '0' => '否',
            '2' => '进度',
        ];
        if ($k === '') {
            return $trialtype;
        }
        return $trialtype[$k] ?? '';
    }

    /**
     * 课程模式
     * @param string $k 键
     * @return array|mixed|string
     */
    protected function getModes($k = '')
    {
        $mode = [
            '0' => '自由',
            '1' => '解锁',
        ];
        if ($k === '') {
            return $mode;
        }
        return $mode[$k] ?? '';
    }

    /* 科目分类 */
    protected function getClass()
    {
        $list = Db::name('course_class')
            ->order("list_order asc")
            ->column('*','id');
        return $list;
    }

    /**
     * 获取老师
     * @return array|mixed|string
     */
    public function getTeachers()
    {
        $list = Db::name('users')
            ->where('type', '=', 1)
            ->order("id desc")
            ->column('*','id');
        return $list;
    }

    /**
     * 学级分类
     * @return array
     */
    protected function getGrade()
    {
        $list  = Db::name('course_grade')
            ->order("list_order asc")
            ->column('*', 'id');
        $list2 = [];
        foreach ($list as $k => $v) {
            if ($v['pid'] != 0) {
                $name      = $list[$v['pid']]['name'] . ' - ' . $v['name'];
                $v['name'] = $name;

                $list2[$k] = $v;
            }
        }
        return $list2;
    }

    /**
     * 学级分类2 排序
     * @return array
     */
    protected function getGradeTwo()
    {
        $list  = Db::name('course_grade')
            ->order("pid asc,list_order asc")
            ->column('*', 'id');
        $list2 = [];

        foreach ($list as $k => $v) {
            if ($v['pid'] == 0) {
                foreach ($list as $k1 => $v1) {
                    if ($v1['pid'] == $v['id']) {
                        $name       = $v['name'] . ' - ' . $v1['name'];
                        $v1['name'] = $name;

                        $list2[] = $v1;

                        unset($list[$k1]);
                    }
                }
                unset($list[$k]);
            }
        }
        return $list2;
    }

    /*
     * 课程列表
     * @return mixed
     */
    public function index()
    {
        $data = $this->request->param();
        $map  = [];

        $sort  = $data['sort'] ?? '1';
//        $map[] = ['sort', '=', $sort];

        $start_time = $data['start_time'] ?? '';
        $end_time   = $data['end_time'] ?? '';

        if ($start_time != "") {
            $map[] = ['starttime', '>=', strtotime($start_time)];
        }

        if ($end_time != "") {
            $map[] = ['starttime', '<=', strtotime($end_time)];
        }

        $status = $data['status'] ?? '';
        if ($status != '') {
            $map[] = ['status', '=', $status];
        } else {
            $map[] = ['status', '=', 1];
        }

        $gradeid = $data['gradeid'] ?? '';
        if ($gradeid != '') {
            $map[] = ['gradeid', '=', $gradeid];
        }

        $classroomid = $data['classroomid'] ?? '';
        if($classroomid!=''){
            $map[]=['classroomid','=',$classroomid];
        }

        $classid = $data['classid'] ?? '';
        if($classid!=''){
            $map[]=['classid','=',$classid];
        }

        $paytype = $data['paytype'] ?? '';
        if ($paytype != '') {
            $map[] = ['paytype', '=', $paytype];
        }

        $type = $data['type'] ?? '';
        if ($type != '') {
            $map[] = ['type', '=', $type];
        }

        $keyword = $data['keyword'] ?? '';
        if ($keyword != '') {
            $map[] = ['name', 'like', '%' . $keyword . '%'];
        }

        $uid = $data['uid'] ?? '';
        if ($uid != '') {
            $map[] = ['uid', '=', $uid];
        }

        $list = CourseCopyModel::where($map)->order("id desc")->paginate(15, false, ['query' => input()]);

        $list->each(function ($v) {

            $v['userinfo'] = getUserInfo($v['uid']);
            $v['studentcount'] = CourseCopyUsersModel::where('courseid', '=', $v['id'])
                ->where('status', '=', 1)->count();
            $v['thumb']    = get_upload_path($v['thumb']);
            $nowtime       = time();
            if ($v['status'] > 0) {
                if ($v['shelvestime'] < $nowtime) {
                    $v['status'] = 1;
                }
            }

            return $v;
        });

        $list->appends($data);
        // 获取分页显示
        $page = $list->render();

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $this->assign('classs', $this->getClass());
        $this->assign([
            'list'       => $list,
            'page'       => $page,
            'sort'       => $sort,
            'weeks'     => $this->getWeeks(),
            'teachers'     => $this->getTeachers(),
            'classrooms'     => $this->getClassrooms(),
            'status'     => $this->getStatus(),
            'grade'      => $this->getGrade(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'livetype'   => $this->getLiveTypes()

        ]);

        // 渲染模板输出
        return $this->fetch('index');
    }

    /*
     * 内容
     * @return mixed
     */
    function contents()
    {
        return $this->index();
    }

    /**
     * 视频大班课
     * @return mixed
     */
    function live()
    {
        return $this->index();
    }

    /**
     * 语音大班课
     * @return mixed
     */
    function live_video()
    {
        return $this->index();
    }

    /*
     * 更新status
     */
    function setstatus()
    {
        $id     = $this->request->param('id', 0, 'intval');
        $status = $this->request->param('status', 0, 'intval');

        $nowtime = time();
        $data    = ['status' => $status];
        if ($status == 1) {
            $info = CourseCopyModel::where(['id' => $id])->find();
            if ($info) {
                if ($info['shelvestime'] > $nowtime) {
                    $data['shelvestime'] = $nowtime;
                }
            }
        }

        $rs = CourseCopyModel::where(['id' => $id])->update(['status' => $status]);
        if (!$rs) {
            $this->error("操作失败！");
        }

        $this->success("操作成功！");

    }

    /*
     * 获取用户详情
     * @param int $uid
     * @return array
     */
    protected function getUser($uid = 0)
    {
        $map   = [];
        $map[] = ['type', '=', 1];
        if ($uid != 0) {
            $map[] = ['id', '=', $uid];
        }

        $list = UsersModel::field('id,user_nickname')->where($map)->select()->toArray();

        return $list;
    }

    /**
     * 获取用户列表
     */
    public function getUserList()
    {
        $data = $this->request->param();
        $uid  = $data['uid'] ?? '0';
        $list = $this->getUser($uid);
        $this->success('', '', $list);
    }

    /*
     * 课程列表
     * @return mixed
     */
    public function addCourse()
    {
        $sort  = $data['sort'] ?? '1';

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $this->assign('classs', $this->getClass());
        $this->assign([
            'list'       => [],
            'page'       => '',
            'sort'       => $sort,
            'coursetimes'     => $this->getCourseTime(),
            'teachers'     => $this->getTeachers(),
            'classrooms'     => $this->getClassrooms(),
            'status'     => $this->getStatus(),
            'grade'      => $this->getGrade(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'livetype'   => $this->getLiveTypes()

        ]);

        // 渲染模板输出
        return $this->fetch('addCourse');
    }

    /*
     * 课程列表
     * @return mixed
     */
    public function batchAddCourse()
    {
        $sort  = $data['sort'] ?? '1';

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $coursetimes = $this->getCourseTime();
        $coursetimes = array_map(function ($v) {
            return $v['startcoursetime'].' ~ '.$v['endcoursetime'];
        }, $coursetimes);

        $this->assign('classs', $this->getClass());
        $this->assign([
            'list'       => [],
            'page'       => '',
            'sort'       => $sort,
            'coursetimes'     => $coursetimes,
            'teachers'     => $this->getTeachers(),
            'classrooms'     => $this->getClassrooms(),
            'status'     => $this->getStatus(),
            'grade'      => $this->getGrade(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'livetype'   => $this->getLiveTypes()

        ]);

        // 渲染模板输出
        return $this->fetch('batchAddCourse');
    }

    /*
     * 课程删除
     */
    public function delStudent()
    {
        $id = $this->request->param('id', 0, 'intval'); // 课程id
        $data = CourseCopyModel::where('id', '=', $id)->find();
        if (!$data) {
            $this->error("信息错误");
        }

        $delstudentid = $this->request->param('delstudentid', 0, 'intval');
        CourseCopyUsersModel::where(array(
            'uid' => $delstudentid,
            'courseid' => $id,
            'status' => 1,
        ))
            ->update(array(
                'addtime' => time(),
                'status' => -1,
            ));

        $this->success("删除成功！");
    }

    /*
     * 添加学生
     * @return mixed
     */
    public function addStudent()
    {
        $id = $this->request->param('id', 0, 'intval');

        $data = CourseCopyModel::where('id', '=', $id)->find();
        if (!$data) {
            $this->error("信息错误");
        }

        $this->assign('data', $data);

        $sort = $data['sort'];

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $list = CourseCopyUsersModel::where('courseid', '=', $id)->where('status', '=', 1)
            ->order("id desc");
        $studentcount = (clone $list)->count();
        $list = $list->paginate(15, false, ['query' => input()]);

        $list->each(function ($v) {
            $v['userinfo'] = getUserInfo($v['uid']);
            return $v;
        });

        // 获取分页显示
        $page = $list->render();

        $this->assign([
            'list'     => $list,
            'page'     => $page,
            'studentcount'     => $studentcount,
            'weeks'     => $this->getWeeks(),
            'sex'     => $this->getSex(),
            'coursecopyusersstep'     => $this->getCourseCopyUsersStep(),
            'teachers'     => $this->getTeachers(),
            'classrooms'     => $this->getClassrooms(),
            'classs'     => $this->getClass(),
            'sort'       => $sort,
            'grade'      => $this->getGradeTwo(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'modes'      => $this->getModes()
        ]);

        // 渲染模板输出
        return $this->fetch('addStudent');
    }

    public function selectStudent()
    {
        $id = $this->request->param('id', 0, 'intval'); // 课程id
        $data = CourseCopyModel::where('id', '=', $id)->find();
        if (!$data) {
            $this->error("信息错误");
        }

        $addstudentid = $this->request->param('addstudentid', 0, 'intval');
        if ($addstudentid) {
            $CourseCopyUsersModel = CourseCopyUsersModel::create(array(
                'uid' => $addstudentid,
                'courseid' => $id,
                'addtime' => time(),
                'status' => 1,
            ), true);
            if (!$CourseCopyUsersModel) {
                $this->error("添加失败！");
            }
        }

        $delstudentid = $this->request->param('delstudentid', 0, 'intval');
        if ($delstudentid) {
            $CourseCopyUsersModel = CourseCopyUsersModel::where(array(
                'uid' => $delstudentid,
                'courseid' => $id,
                'status' => 1,
            ))
            ->update(array(
                'addtime' => time(),
                'status' => -1,
            ));
            if (!$CourseCopyUsersModel) {
                $this->error("删除失败！");
            }
        }

        $this->assign('data', $data);

        $sort = $data['sort'];

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $user_nickname = $this->request->param('user_nickname', '', 'string');
        if ($user_nickname) {
            $list = UsersModel::where('user_nickname', 'like', '%'.$user_nickname.'%')
                ->where('type', '=', 0)
                ->order("id desc")
                ->paginate(1000, false, ['query' => input()]);

            $list->each(function ($v) use ($id) {
                $v['age'] = '';
                if ($v['birthday']) {
                    $days = (time()-$v['birthday'])/86400;
                    $v['age'] = ((int)($days/365)).'岁'.((int)(($days%365)/30)).'个月';
                }
                $v['coursecopyusersstep'] = CourseCopyUsersModel::where('courseid', '=', $id)
                    ->where('status', '=', 1)
                    ->where('uid', '=', $v['id'])
                    ->value('step') ?? -1;
                return $v;
            });

            // 获取分页显示
//            $page = $list->render();
        } else {
            $list = [];
        }

        $this->assign([
            'list'     => $list,
            'old_user_nickname'     => $user_nickname,
            'weeks'     => $this->getWeeks(),
            'sex'     => $this->getSex(),
            'coursecopyusersstep'     => $this->getCourseCopyUsersStep(),
            'teachers'     => $this->getTeachers(),
            'classrooms'     => $this->getClassrooms(),
            'classs'     => $this->getClass(),
            'sort'       => $sort,
            'grade'      => $this->getGradeTwo(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'modes'      => $this->getModes()
        ]);

        // 渲染模板输出
        return $this->fetch('selectStudent');
    }

    /*
     * 课程添加提交
     */
    public function addCoursePost()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();

            if (!empty($data['msg'])) {
                $this->error($data['msg']);
            }

            $sort = $data['sort'] ?? '';
            $uid  = $data['uid'] ?? '';
            if ($uid == '') {
                $this->error('请填写主讲老师ID');
            }
            $isexist = UsersModel::field('type')->where('id', '=', $uid)->find();
            if (!$isexist) {
                $this->error('该主讲老师不存在');
            }
            if ($isexist['type'] != 1) {
                $this->error('该ID还不是老师');
            }

            if ($sort >= 1) {
                $tutoruid = $data['tutoruid'] ?? 0;
                if ($tutoruid > 0) {
                    if ($tutoruid == $uid) {
                        $this->error('主讲老师和辅导老师不能是同一个人');
                    }

                    $isexist = UsersModel::field('type')->where('id', '=', $tutoruid)->find();
                    if (!$isexist) {
                        $this->error('该辅导老师不存在');
                    }
                    if ($isexist['type'] != 1) {
                        $this->error('该ID还不是老师');
                    }
                } else {
                    $data['tutoruid'] = 0;
                }
            }

            $nowtime     = time();
            $startdate = $data['startdate'];
            if ($startdate == '') {
                $this->error('请填写上课日期');
            }

            $coursetime = $this->getCourseTime();

            $starttime = $data['startdate'].' '.$data['startcoursetime'];
            if ($starttime == '') {
                $this->error('请填写上课时间');
            } else {
                $starttime = substr($starttime, 0, 16);
                $starttimearr = array_column($coursetime, 'startcoursetime');
                $checkstarttime = substr($starttime, -5);
                if (!in_array($checkstarttime, $starttimearr)) {
                    $this->error('上课时间不符合规范：'.implode('、', $starttimearr));
                }
            }
            $data['starttime'] = strtotime($starttime);

            $endtime = $data['startdate'].' '.$data['endcoursetime'];
            if ($endtime == '') {
                $this->error('请填写下课时间');
            } else {
                $endtime = substr($endtime, 0, 16);
                $endtimearr = array_column($coursetime, 'endcoursetime');
                $checkendtime = substr($endtime, -5);
                if (!in_array($checkendtime, $endtimearr)) {
                    $this->error('下课时间不符合规范：'.implode('、', $endtimearr));
                }
            }
            $data['endtime'] = strtotime($endtime);

            if ($data['starttime'] >= $data['endtime']) {
                $this->error('下课时间不能早于上课时间');
            }

            $data['addtime'] = $nowtime;
            $data['status'] = 1;

            $CourseCopyModel = CourseCopyModel::create($data, true);
            if (!$CourseCopyModel) {
                $this->error("添加失败！");
            }

            $this->success("添加成功！", url("courseguide/addStudent", ['id' => $CourseCopyModel->id]));
        }
    }

    /*
     * 课程添加提交
     */
    public function batchAddCoursePost()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();

            if (!empty($data['msg'])) {
                $this->error($data['msg']);
            }

            $sort = $data['sort'] ?? '';
            $uid  = $data['uid'] ?? '';
            if ($uid == '') {
                $this->error('请填写主讲老师ID');
            }
            $isexist = UsersModel::field('type')->where('id', '=', $uid)->find();
            if (!$isexist) {
                $this->error('该主讲老师不存在');
            }
            if ($isexist['type'] != 1) {
                $this->error('该ID还不是老师');
            }

            if ($sort >= 1) {
                $tutoruid = $data['tutoruid'] ?? 0;
                if ($tutoruid > 0) {
                    if ($tutoruid == $uid) {
                        $this->error('主讲老师和辅导老师不能是同一个人');
                    }

                    $isexist = UsersModel::field('type')->where('id', '=', $tutoruid)->find();
                    if (!$isexist) {
                        $this->error('该辅导老师不存在');
                    }
                    if ($isexist['type'] != 1) {
                        $this->error('该ID还不是老师');
                    }
                } else {
                    $data['tutoruid'] = 0;
                }
            }

            $nowtime     = time();

            $startdate = $data['startdate'];
            if ($startdate == '') {
                $this->error('请填开课日期');
            }

            $enddate = $data['enddate'];
            if ($enddate == '') {
                $this->error('请填结课日期');
            }

            if ($data['startdate'] > $data['enddate']) {
                $this->error('结课日期不能早于开课日期');
            }

            $coursetimeid = $data['coursetimeid'];
            if ($coursetimeid == '') {
                $this->error('请选择上课时间');
            } else {
                $coursetimes = $this->getCourseTime();
                $coursetime = $coursetimes[$coursetimeid];
                $startcoursetime = $coursetime['startcoursetime'];
                $endcoursetime = $coursetime['endcoursetime'];
            }

            $data['addtime'] = $nowtime;
            $data['status'] = 1;

            $first_time = $startdate.' '.$startcoursetime; // 开课日期+上课时间
            $first_time = strtotime($first_time);
            $final_time = $enddate.' '.$endcoursetime; // 结课日期+下课时间
            $final_time = strtotime($final_time);

            $starttime = $first_time; // 初始值
            $endtime = $startdate.' '.$endcoursetime; // 开课日期+下课时间
            $endtime = strtotime($endtime); // 初始值
            while ($endtime <= $final_time) {
                $data['starttime'] = $starttime;
                $data['endtime'] = $endtime;
                CourseCopyModel::create($data, true);
                $starttime += 60*60*24*7;
                $endtime += 60*60*24*7;
            }

            $this->success("批量加课成功！", url("courseguide/index", ['sort' => 1]));
        }
    }

    /*
     * 课程编辑
     * @return mixed
     */
    public function edit()
    {
        $id = $this->request->param('id', 0, 'intval');

        $data = CourseCopyModel::where('id', '=', $id)->find();
        if (!$data) {
            $this->error("信息错误");
        }

        $this->assign('data', $data);

        $sort = $data['sort'];

        if ($sort == 2) {
            $this->assign('types', $this->getLiveTypes());
        } else {
            $this->assign('types', $this->getTypes());
        }

        $this->assign([
            'classs'     => $this->getClass(),
            'sort'       => $sort,
            'grade'      => $this->getGradeTwo(),
            'paytypes'   => $this->getPayTypes(),
            'trialtypes' => $this->getTrialTypes(),
            'modes'      => $this->getModes()
        ]);

        return $this->fetch();
    }

    /*
     * 课程编辑提交
     */
    public function editCoursePost()
    {
        if ($this->request->isPost()) {
            $data = $this->request->param();

            $id  = $data['id'] ?? '';
            if ($id == '') {
                $this->error('没传课程ID');
            }

            $sort = $data['sort'] ?? '';
            $uid  = $data['uid'] ?? '';
            if ($uid == '') {
                $this->error('请填写主讲老师ID');
            }
            $isexist = UsersModel::field('type')->where('id', '=', $uid)->find();
            if (!$isexist) {
                $this->error('该主讲老师不存在');
            }
            if ($isexist['type'] != 1) {
                $this->error('该ID还不是老师');
            }

            if ($sort >= 1) {
                $tutoruid = $data['tutoruid'] ?? 0;
                if ($tutoruid > 0) {
                    if ($tutoruid == $uid) {
                        $this->error('主讲老师和辅导老师不能是同一个人');
                    }

                    $isexist = UsersModel::field('type')->where('id', '=', $tutoruid)->find();
                    if (!$isexist) {
                        $this->error('该辅导老师不存在');
                    }
                    if ($isexist['type'] != 1) {
                        $this->error('该ID还不是老师');
                    }
                } else {
                    $data['tutoruid'] = 0;
                }
            }

            $nowtime     = time();

            $starttime = $data['starttime'];
            if ($starttime == '') {
                $this->error('请填写上课时间');
            }
            $data['starttime'] = strtotime($starttime);

            $endtime = $data['endtime'];
            if ($endtime == '') {
                $this->error('请填写下课时间');
            }
            $data['endtime'] = strtotime($endtime);

            if ($data['starttime'] >= $data['endtime']) {
                $this->error('下课时间不能早于上课时间');
            }

            $data['addtime'] = $nowtime;
            $data['addtime'] = 1;

            $res = CourseCopyModel::where('id', '=', $id)->update($data, true);
            if (!$res) {
                $this->error("编辑失败！");
            }

            $this->success("编辑成功！", url("courseguide/addStudent", ['id' => $id]));
        }
    }

    /**
     * 排序
     */
    public function listOrder()
    {
        $model = DB::name('course');
        parent::listOrders($model);
        $this->success("排序更新成功！");
    }

    /*
     * 课程删除
     */
    public function del()
    {
        $studentcount = $this->request->param('studentcount', 0, 'intval'); // 课程id
        if ($studentcount) {
            $this->error("已有".$studentcount."人学习，请先删除学生！");
        }

        $id = $this->request->param('id', 0, 'intval'); // 课程id
        $data = CourseCopyModel::where('id', '=', $id)->find();
        if (!$data) {
            $this->error("信息错误");
        }

        $rs = CourseCopyModel::where(array(
            'id' => $id,
            'status' => 1,
        ))
            ->update(array(
                'addtime' => time(),
                'status' => -1,
            ));
        if (!$rs) {
            $this->error("删除失败！");
        }

        $this->success("删除成功！");
    }

}