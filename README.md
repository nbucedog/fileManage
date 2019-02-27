# fileManage
## API文档：
| Description | URL | Method | Param(notnull) | Param(nullable) |Content-Type| Tips |
:------: | :-------:|:------:|:----------------|:----------------|:----------:|:----:|
| Base Url | pan.hoppo.com.cn/api |
| 获取文件信息 | /fileInfo | get |  | keyword, fileType, brandId, seriesId |  | 参数用于过滤(and) |
| 编辑文件信息 | /fileInfo | update | id | newBrandName, newSeriesName | json | 参数更新(or) |
| 上传单个文件及信息 | /file | post | 选择一个文件 | | formData | 文件名必须为:code_类型.后缀 |
| 删除单个文件及信息 | /file | delete | id |  | json |  |
| 上传多个文件及信息 | /multiFile | post | 选择一个folder | | formData |  |
| 删除多个文件及信息 | /multiFile | delete | id[] |  | json | 传递所有需被删除的id |
| 登录 | /login | post | username, password | rememberMe | formData | 是否设置cookies |
| 注销 | /logout | get |  | | | | method随意 |
| 导出列表 | /export | get |  | keyword, fileType, brandId, seriesId |  | 参数用于过滤(and) |
| 获取products表 | /products | get |  | keyword, brandId, seriesId | | 参数用于过滤(and) |
| 获取seriess表 | /seriess | get |  | keyword, brandId |  | 参数用于过滤(and) |
| 获取brands表 | /brands | get |  | keyword |  | 参数用于过滤(and) |
