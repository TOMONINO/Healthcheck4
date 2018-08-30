# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

###
window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: gon.labels,
            datasets: [{
                label: 'Weight',
                lineTension: 0,
                fill: false,
                data: gon.data1,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })
###

zapdata=[]
zaplabel=[]
count = 0
window.set_handler = ->
     $("#listbox").change ->
        zapdata=[]
        zaplabel=[]
        count = 0
        r = $(this).val()
        for i in gon.data1
          console.log(count)
          if r == "1"
            console.log(1);
            zapdata.push(gon.data1[count])
            zaplabel.push(gon.labels[count])
          else if r == "2"
            if count % 7 == 0
              console.log(2);
              zapdata.push(gon.data1[count])
              zaplabel.push(gon.labels[count])
          else if r == "3"
            if count % 30 == 0
              console.log(gon.data1[count])
              zapdata.push(gon.data1[count])
              zaplabel.push(gon.labels[count])
          count=count+1
        console.log(zapdata)
        draw_graph();
window.draw_graph = ->
    ctx = document.getElementById("myChart").getContext('2d')
    if zapdata.length==0
      zapdata=gon.data1
      zaplabel=gon.labels
    myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: zaplabel,
            datasets: [{
                label: 'Weight',
                lineTension: 0,
                fill: false,
                data: zapdata,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                ],
                borderWidth: 3
            }, {
                label: 'Targetweight',
                data: gon.data2
                type: 'line'
                borderColor: [
                    'rgba(11,218,81,1)',
                ],
                backgroundColor: [
                    'rgba(11,218,81, 0.2)',
                ],
                lineTension: 0,
                fill: false,
                borderWidth: 6
            }],
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })
