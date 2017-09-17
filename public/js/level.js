    $(function() {
                var levelLength = $(".level").length;
                var s = [];
                for (let i = 0; i < levelLength; i++) {
                    let lev = parseInt($(".level").eq(i).html().trim());
                    console.log(lev);
                    s.push(lev);
                    console.log(s);
                }
                for (let i = 0; i < levelLength; i++) {
                    if (s[i] >= 0 && s[i] < 100) {
                        $("#levelValue").html(100 - s[i]);
                        $(".level").eq(i).html("方丈平民");
                        $(".level").eq(i).css('background', '#056');
                    } else if (s[i] >= 100 && s[i] < 300) {
                        $("#levelValue").html(300 - s[i]);
                        $(".level").eq(i).html("方丈县男");
                        $(".level").eq(i).css('background', '#0B7');
                    } else if (s[i] >= 300 && s[i] < 600) {
                        $("#levelValue").html(600 - s[i]);
                        $(".level").eq(i).html("方丈县子");
                        $(".level").eq(i).css('background', '#6A3');
                    } else if (s[i] >= 600 && s[i] < 1000) {
                        $("#levelValue").html(1000 - s[i]);
                        $(".level").eq(i).html("方丈郡伯");
                        $(".level").eq(i).css('background', '#820');
                    } else if (s[i] >= 1000 && s[i] < 1500) {
                        $("#levelValue").html(1500 - s[i]);
                        $(".level").eq(i).html("方丈郡侯");
                        $(".level").eq(i).css('background', '#FAD');
                    } else if (s[i] >= 1500 && s[i] < 2100) {
                        $("#levelValue").html(2100 - s[i]);
                        $(".level").eq(i).html("方丈郡公");
                        $(".level").eq(i).css('background', '#60f');
                    } else if (s[i] >= 2100 && s[i] < 2800) {
                        $("#levelValue").html(2800 - s[i]);
                        $(".level").eq(i).html("方丈阁伯");
                        $(".level").eq(i).css('background', '#900');
                    } else if (s[i] >= 2800 && s[i] < 3600) {
                        $("#levelValue").html(3600 - s[i]);
                        $(".level").eq(i).html("方丈阁侯");
                        $(".level").eq(i).css('background', '#2AA');
                    } else if (s[i] >= 3600 && s[i] < 4500) {
                        $("#levelValue").html(4500 - s[i]);
                        $(".level").eq(i).html("方丈阁公");
                        $(".level").eq(i).css('background', '#AAA');
                    } else if (s[i] >= 4500 && s[i] < 6000) {
                        $("#levelValue").html(6000 - s[i]);
                        $(".level").eq(i).html("方丈阁王");
                        $(".level").eq(i).css('background', '#655');
                    } else if (s[i] >= 6000 && s[i] < 8500) {
                        $("#levelValue").html(8500 - s[i]);
                        $(".level").eq(i).html("方丈阁帝");
                        $(".level").eq(i).css('background', '#AA0');
                    } else if (s[i] >= 8500 && s[i] < 12000) {
                        $("#levelValue").html(12000 - s[i]);
                        $(".level").eq(i).html("方丈半仙");
                        $(".level").eq(i).css('background', '#A3A');
                    } else if (s[i] >= 12000 && s[i] < 18000) {
                        $("#levelValue").html(18000 - s[i]);
                        $(".level").eq(i).html("方丈散仙");
                        $(".level").eq(i).css('background', '#3AA');
                    } else if (s[i] >= 18000 && s[i] < 25000) {
                        $("#levelValue").html(25000 - s[i]);
                        $(".level").eq(i).html("方丈正仙");
                        $(".level").eq(i).css('background', '#935A46');
                    } else if (s[i] >= 25000 && s[i] < 35000) {
                        $("#levelValue").html(35000 - s[i]);
                        $(".level").eq(i).html("方丈上仙");
                        $(".level").eq(i).css('background', '#F66');
                    } else if (s[i] >= 35000) {
                        $("#levelValue").html("无");
                        $(".level").eq(i).html("方丈阁尊");
                        $(".level").eq(i).css('background', '#803DE2');
                    }
                }
            });