使用方式：
```
bash <(curl -fsSL https://raw.githubusercontent.com/AbsFlw/my_bevy_scaffold/main/my_bevy_new.sh)  
```

功能如下：
 1. 用户输入项目名，执行 cargo new                                                                                                                                                                  
 2. 自动查询 crates.io 上最新的 Bevy 版本并添加依赖                                                                                                                                                                  
 3. 克隆 Bevy 源码到 deps/bevy/（浅克隆 + sparse checkout）                                                                                                                                                          
 4. 初始化 CodeGraph 索引，同时索引你的代码和 Bevy                                                                                                                                                                   
 5. 生成 .mcp.json（pi 的 MCP 配置）和 CONTEXT.md（AI 上下文说明）                                                                                                                                                   
 6. 配置编译工作流：cargo dev（快速开发模式，动态链接）
