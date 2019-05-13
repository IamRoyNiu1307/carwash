const app = getApp()
Component({
  data: {
    selected: 0,
    color: "#7A7E83",
    selectedColor: "#3cc51f",
    list: []
  },
  attached() {
    console.log("attached")
    this.setData({
      list: app.globalData.list
    })
  },
  methods: {
    switchTab(e) {
      const data = e.currentTarget.dataset
      const url = data.path
      
      this.setData({
        selected: data.index
      })
      wx.switchTab({ url })
    }
  }
})