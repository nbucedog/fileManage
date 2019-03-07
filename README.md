# fileManage
## API文档：
| Description | URL | Method | Param(notnull) | Param(nullable) |Content-Type| Tips |
:------: | :-------:|:------:|:----------------|:----------------|:----------:|:----:|
| Base Url | pan.hoppo.com.cn/api |
| 获取文件信息 | /fileInfo | get |  | keyword, fileType, brandId, seriesId |  | 参数用于过滤(and) |
| 获取关联信息 | /relativeInfo | post | [fileName] |  | formData | 数组可以为单个 |
| 编辑文件信息 | /fileInfo | put | id | newBrandName, newSeriesName | json | 参数更新(or) |
| 上传单个文件及信息 | /file | post | 文件,productId,brand,name | | formData | 文件名必须为:code_类型.后缀 |
| 删除单个文件及信息 | /file | delete | id |  | json |  |
| 上传多个文件 | /multiFile | post | 选择多个文件 | | formData | 用ctrl或shift |
| 上传多条信息 | /multiFileInfo | post | [fileName,productId,brand,name] |  | json | 和/multiFile配合使用 |
| 删除多个文件及信息 | /multiFile | delete | [id] |  | json | 传递所有需被删除的id |
| 登录 | /login | post | username, password | rememberMe | formData | 是否设置cookies |
| 注销 | /logout | get |  | | | | method随意 |
| 导出列表 | /export | get |  | keyword, fileType, brandId, seriesId |  | 参数用于过滤(and) |
| 获取products表 | /products | get |  | keyword, brandId, seriesId | | 参数用于过滤(and) |
| 获取seriess表 | /seriess | get |  | keyword, brandId |  | 参数用于过滤(and) |
| 获取brands表 | /brands | get |  | keyword |  | 参数用于过滤(and) |

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
| 上传错误 |
| 1000 | 上传失败:系统错误 |
| 1001 | 上传失败:文件不存在 |
| 1002 | 上传失败:文件名格式不规范 |
| default | 未知错误 |
