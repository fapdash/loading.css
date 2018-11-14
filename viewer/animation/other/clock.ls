ret = do
  name: \clock
  desc: ''
  edit: do
    dur: default: 12
    accelerate: default: 0.7, type: \number, min: 0, max: 1

  code: (config) ->  
    """
    @keyframes ld-clock
      0%
        transform: rotate(0deg)
      8.333%
        transform: rotate(30deg)
      16.667%
        transform: rotate(60deg)
      25%
        transform: rotate(90deg)
      33.333%
        transform: rotate(120deg)
      41.667%
        transform: rotate(150deg)
      50%
        transform: rotate(180deg)
      58.333%
        transform: rotate(210deg)
      66.667%
        transform: rotate(240deg)
      75%
        transform: rotate(270deg)
      83.333%
        transform: rotate(300deg)
      91.667%
        transform: rotate(330deg)
      100%
        transform: rotate(360deg)
    .ld-clock
      animation: ld-clock config.dur cubic-bezier(0,config.accelerate,1 - config.accelerate,1) infinite
    """

if module? => module.exports = ret
