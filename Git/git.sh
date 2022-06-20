# status 
# U: '未跟踪',
# A: '已暂存',
# M: '已修改',
# default: '未修改'


# 检查文件状态
git status 
git status -s # 已精简的方式显示文件状态 --short简写

# 向暂存区添加文件
git add <filename>
git add . 

# 提交更新
git commit -m 'description' # -m:提交描述信息
git commit -a -m 'description' # -a:

# 将暂存区数据推送到远程仓库
git push




# 撤销对文件的修改, 还原成git仓库中保留的版本
git checkout -- index.html

# 删除工作区文件
git rm -f index.js # 强制删除
git rm --cached index.js # 从git仓库移除，但保留工作区中对应的文件


# 查看提交历史
git log
git log -2 # 展示最新的两条提交历史
git log -2 --pretty=oneline # 在一行上展示两条提交历史的信息
git reflog --pretty=oneline # 查看命令操作的历史

# 查看分支列表
git branch 
# 新建分支
git branch <name>
# 删除分支
git branch -d <name>
# 强制删除分支
git branch -D <name>
# 切换分支
git checkout <name>
# 创建并切换分支
git checkout -b <name>
# 合并分支
git merge <dev> # 将dev分支内容合并到当前分支

# 将本地分支推送到远程
git push -u origin <name>
git push -u origin <本地分支>/<远程分支> # 将本地分支推送到远程分支并取别名

# 查看远程仓库中的所有分支
git remote show <storeName>

# 将远程分支数据下载到本地仓库
git checkout <branchName> 
git checkout -b dev origin/develop # 将远程分支develop下载到本地dev分支下

# 拉取最新代码
git pull

# 删除远程分支
git push origin --delete <branchName>

# 暂存区回滚
git reset --soft <versionID> # 撤销commit操作
git reset --mixed <versionID> # 撤销commit 和 add两个操作

# github版本回滚
git reset --hard <versionID> #撤销并舍弃版本好之后的提交记录。需谨慎使用
git revert <versionID> #撤销 。但保留了提交记录(生成新版本覆盖当前版本)

# 克隆远程代码到本地
git clone <address>