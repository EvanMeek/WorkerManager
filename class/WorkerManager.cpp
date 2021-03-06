//
// Created by evanmeek on 19-5-23.
//

#include <iostream>
#include <fstream>
#include <algorithm>
#include <functional>
#include "../header/WorkerManager.h"
#include "../header/Employee.h"
#include "../header/Manager.h"
#include "../header/Boss.h"

using namespace std;

/*
 * @TODO 用于初始化
 */
WorkerManager::WorkerManager() {
    this->workerCount = 0;
    this->workerArr = nullptr;
}

/**
 * WorkerManager析构函数
 * @TODO 释放资源
 */
WorkerManager::~WorkerManager() = default;

/**
 * 新增职工
 */
void WorkerManager::addWorker() {
    cout << "请输入增加职工数量:";
    int addCount = -1;
    cin >> addCount;

    if (addCount > 0) {
        //计算新空间大小
        int newSpaceSize = this->workerCount + addCount;
        //开辟新空间
        auto **newSpace = new Worker *[newSpaceSize];
        //将原空间内容放到新空间下
        if (workerArr != nullptr) {
            for (int i = 0; i < this->workerCount; ++i) {
                newSpace[i] = workerArr[i];
            }
        }
        //录入新数据
        for (int j = 0; j < addCount; ++j) {
            int id, deptID;
            string name;
            cout << "请输入第" << j + 1 << "位职工的编号:";
            cin >> id;
            cout << "请输入第" << j + 1 << "位职工的姓名:";
            cin >> name;
            cout << "请输入选择第" << j + 1 << "位职工的职位:" << endl;
            cout << "1.普通职工" << endl << "2.经理" << endl << "3.老板" << endl;
            cin >> deptID;
            Worker *worker = nullptr;
            switch (deptID) {
                case 1: {
                    worker = new Employee(id, name, deptID);
                    break;
                }
                case 2: {
                    worker = new Manager(id, name, deptID);
                    break;
                }
                case 3: {
                    worker = new Boss(id, name, deptID);
                    break;
                }
                default:
                    cout << "输入有误！" << endl;
                    break;
            }
            newSpace[this->workerCount + j] = worker;
        }
        //释放原空间
        delete[]workerArr;
        //更改员工数组指针的指向
        this->workerArr = newSpace;
        //更新员工个数
        this->workerCount = newSpaceSize;
        //提示信息
        cout << "新增" << addCount << "名员工成功!" << endl;
        //写入到文件内
        save();
    } else {
        cout << "输入有误!" << endl;
        return;
    }
}

/**
 * 显示所有员工信息
 * @TODO 只需要遍历出员工数组的指针即可
 */
void WorkerManager::showWorkerInfo() {
    cout << "职工ID\t\t职工姓名\t\t职工部门" << endl;
    if (workerCount > 0) {
        for (int i = 0; i < this->workerCount; ++i) {
            Worker *w = this->workerArr[i];
            w->showInfo();
        }
    }
}

/*
 * 展示菜单
 * @TODO 列出菜单列表，与用户进行交互
 */
void WorkerManager::show_menu() {
    cout << "---------欢迎使用职工管理系统---------" << endl;
    cout << "\t0.退出系统" << endl;
    cout << "\t1.增加职工信息" << endl;
    cout << "\t2.显示职工信息" << endl;
    cout << "\t3.修改职工信息" << endl;
    cout << "\t4.查找职工信息" << endl;
    cout << "\t5.删除职工信息" << endl;
    cout << "\t6.按照编号排序" << endl;
    cout << "\t7.清空所有职工" << endl;
    cout << "--------------------------------------" << endl;
}

/**
 * 保存员工信息
 * @TODO 利用fstream将用户的信息保存
 */
void WorkerManager::save() {
    if (workerCount > 0) {
        //写入流对象
        ofstream ofs("empInfo.txt", ios::out);
        if (!ofs) {
            cout << "数据文件丢失." << endl;
            return;
        }
        for (int i = 0; i < workerCount; ++i) {
            ofs << workerArr[i]->id << "\t\t" << workerArr[i]->name << "\t\t" << workerArr[i]->deptID << endl;
        }
        ofs.close();
    }
}

void WorkerManager::exitSystem() {
    cout << "欢迎再次使用本系统" << endl;
    exit(0);
}

/**
 * 更新员工信息
 */
void WorkerManager::updateWorker() {
    //指定员工的ID
    int workerID;
    //被更新员工的所在下标
    int updateWorkerIndex = -1;
    cout << "请输入要修改的员工的ID:";
    cin >> workerID;
    for (int i = 0; i < workerCount; ++i) {
        if (workerID == workerArr[i]->id) {
            updateWorkerIndex = i;
        }
    }
    if (updateWorkerIndex == -1) {
        cout << "修改失败!未找到此员工!" << endl;
        return;
    }
    cout << "请输入" << workerArr[updateWorkerIndex]->name << "的ID";
    cin >> workerArr[updateWorkerIndex]->id;
    cout << "请输入" << workerArr[updateWorkerIndex]->name << "的姓名";
    cin >> workerArr[updateWorkerIndex]->name;
    cout << "请输入" << workerArr[updateWorkerIndex]->name << "的部门编号";
    cin >> workerArr[updateWorkerIndex]->deptID;
    save();
    cout << "修改成功!" << endl;
}
/**
 * 根据姓查找职工ID
 */
void WorkerManager::findWorkerByName() {
    //是否找到
    bool isFind = false;
    //要查询的员工姓名
    string workerName;
    //查询到的员工元素的下标
    int *findIndex = new int[workerCount]();
    cout << "请输入要查询的员工的姓名:";
    cin >> workerName;
    for (int i = 0; i < workerCount; ++i) {
        if (workerArr[i]->name == workerName) {
          cout<<"职工ID\t职工姓名\t职工职位"<<endl; 
          workerArr[i]->showInfo();
          isFind = true;
        }
    }
    delete[] findIndex;
    if (!isFind) {
        cout << "很抱歉,未查询到姓名为 " << workerName << " 的员工." << endl;
    }
}

/**
 * 根据员工ID查询员工
 * @TODO 如果没有查询到提示用户查无此人,有则输出员工信息
 */
void WorkerManager::findWorkerByID() {
    //要查询的员工ID
    int workerID;
    cout << "请输入要查询的员工ID:";
    cin >> workerID;
    cout << "正在为您查询中,请稍等..." << endl;
    for (int i = 0; i < workerCount; ++i) {
        if (workerID == workerArr[i]->id) {
          cout<<"职工ID\t职工姓名\t职工职位"<<endl; 
          workerArr[i]->showInfo();
          return;
        }
    }
    cout << "很抱歉,未查询到ID为 " << workerID << " 的员工." << endl;
}

/**
 * 查询员工信息
 * @TODO 让用户选择查询方式
 */
void WorkerManager::findWorker() {
    int choose(0);
    cout << "请输入查询方式(1.按ID查询  2.按姓名查询):";
    cin >> choose;
    switch (choose) {
        case 1: {
            findWorkerByID();
            break;
        }
        case 2: {
            findWorkerByName();
            break;
        }
        default: {
            cout << "输入有误!" << endl;
            break;
        }
    }
}

/**
 * 删除所有员工
 */
void WorkerManager::clearAllWorker() {
    char choose('n');
    cout << "你确定要清空所有职工信息?此操作不可恢复.[Y/n]";
    cin >> choose;
    if (choose == 'Y') {
        delete[] workerArr;
        workerCount = 0;
        ofstream ofs("empInfo.txt", ios::out);
        ofs.clear();
        ofs.close();
        cout << "已清空所有职工信息." << endl;
    }
    return;
}

/**
 * 删除指定的员工
 */
void WorkerManager::deleteWorker() {
    int workerID(0);
    cout << "请输入要删除的职工ID:";
    cin >> workerID;
    int index = isExist(workerID);
    if (index != -1) {
        for (int i = index; i < workerCount; ++i) {
            workerArr[i] = workerArr[i + 1];
        }
        workerCount--;
        cout << "删除成功!" << endl;
        save();
        return;
    }
    cout << "删除失败!职工不存在!" << endl;
}

/**
 *判断职工是否存在
 * @param id 职工id
 * @return 职工的索引
 */
int WorkerManager::isExist(int id) {
    for (int i = 0; i < workerCount; ++i) {
        if (id == workerArr[i]->id)
            return i;
    }
    return -1;
}
/**
 * 根据职工ID进行排序
 */
void WorkerManager::sortWorkerByID() {
    if (workerCount > 0) {
        char choose;
        cout << "请输入排序的方式(1.升序\t2.降序):";
        cin >> choose;
        switch (choose) {
            //升序
            case '1': {
                for (int i = 0; i <workerCount; ++i) {
                    for (int j = 0; j <workerCount-1-i; ++j) {
                        if(workerArr[j]->id>workerArr[j+1]->id){
                            Worker * tmp;
                            tmp = workerArr[j];
                            workerArr[j] = workerArr[j+1];
                            workerArr[j+1] = tmp;
                        }
                    }
                }
                break;
            }
                //降序
            case '2': {
                for (int i = 0; i <workerCount; ++i) {
                    for (int j = 0; j <workerCount-1-i; ++j) {
                        if(workerArr[j]->id<workerArr[j+1]->id){
                            Worker * tmp;
                            tmp = workerArr[j];
                            workerArr[j] = workerArr[j+1];
                            workerArr[j+1] = tmp;
                        }
                    }
                }
                break;
            }
            default:
                cout << "输入有误!" << endl;
                break;
        }
    }
}

