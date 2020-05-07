window.draw_graph = (targetId, labels, data) ->
    ctx = document.getElementById(targetId).getContext('2d')
    console.log(targetId)
    hallChart = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: labels,
            datasets: [{
                label: '# of Votes',
                data: data,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 5,
            }]
        },
        options: {
            scale: {
                  pointLabels: {
                   fontSize: 35 
                  },
                ticks: {
                    beginAtZero:true,
                    max: 5,
                    min: 0,
                    stepSize: 1
                }
            }
        }
    })