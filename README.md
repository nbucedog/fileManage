# fileManage
## API文档：
| Description | URL | Method | Param(notnull) | Param(nullable) |Content-Type| Tips |
:------: | :-------:|:------:|:----------------|:----------------|:----------:|:----:|
| Base Url | pan.hoppo.com.cn/api |
| 获取文件信息 | /fileInfo | get | pageIndex,pageSize |  |  |  |
| 获取文件信息 | /fileInfo | post | pageIndex,pageSize | keyword,brand,series,fileType | json | 参数用于过滤(忽略null) |
| 编辑文件信息 | /fileInfo | put | fileName | brand, series, name | json | 参数更新(or) |
| 获取关联信息 | /relativeInfo | post | [fileName] |  | formData | 数组可以为单个 |
| 上传单个文件及信息 | /file | post | 文件,productId,brand,name,series |  | formData | 参数可为“”|
| 上传多个文件 | /multiFile | post | 选择多个文件 | | formData | 用ctrl或shift |
| 上传多条信息 | /multiFileInfo | post | [fileName,productId,brand,name] |  | json | 和/multiFile配合使用 |
| 删除多个文件及信息 | /multiFile | delete | [id,fileName] |  | json | id用于删库，fileName用于删文件 |
| 登录 | /login | post | username, password | rememberMe | formData | 是否设置cookies |
| 注销 | /logout | get |  | | | | method随意 |
| 导出列表 | /export | get |  |  |  |  |
| 获取products表 | /products | get |  | keyword, brandId, seriesId | | 未用 |
| 获取seriess表 | /seriess | get |  | keyword, brandId |  | 未用 |
| 获取brands表 | /brands | get |  | keyword |  | 未用 |
| 上传tupian | /tupian | post | 单个文件 | description | formData | description最多300字 |
| 获取tupian信息 | /tupian | get |  | id | url |  |
| 删除tupian及信息 | /tupian | delete | [id,fileName] |  | json |  |

## 状态码:
| status | Description |
|:------:|:-----------:|
| 成功返回码 |
| 0 | 请求成功 |
| 100 | 登录成功 |
| 101 | 注销成功 |
| 200 | 上传成功 |
| 失败返回码 |
| 401 | 账号不存在 |
| 402 | 密码错误 |
| 403 | 没有权限 |
| 404 | 页面搞丢了 |
| 500 | 内部错误 |
| 上传错误 |
| 1000 | 系统错误 |
| 1001 | 文件不存在 |
| 1002 | 文件名格式不规范 |
| default | 未知错误 |
