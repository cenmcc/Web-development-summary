const app = document.getElementById('app')

// 获取元素大小: content + padding + border
app.offsetHeight
app.offsetWidth
// 获取元素的绝对位置: 从border开始
app.offsetLeft  
app.offsetTop

app.offsetParent


// 获取元素大小: content + padding 
app.clientHeight
app.clientWidth
// 获取元素的绝对位置: 从content开始
app.clientLeft
app.clientTop

// 容器大小: content + padding 
app.scrollHeight
app.scrollWidth
// 获取相对位置: 从content 开始
app.scrollLeft
app.scrollTop



