module.exports = {
  title: '盗梦空间',
  description: '林伟琨的写字台',
  base: process.env.NODE_ENV === 'production' ? '/blog/' : '/',
  markdown: {
    lineNumbers: true
  },
  themeConfig: {
    nav: require('./nav'),
    collapsable: false,
    sidebar: require('./sidebar')
  }
}
