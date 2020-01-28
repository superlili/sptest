function delete_sure() {

    var gnl = confirm("确定删除此空间众包任务?");

    if (gnl == true) {

        return true;

    } else {

        window.event.returnValue = false;

    }
}

function getTasksure_again() {

    var gnl = confirm("确定接受此空间众包任务?");

    if (gnl == true) {

        return true;

    } else {

        window.event.returnValue = false;

    }
}

function sure_giveUp() {

    var gnl = confirm("确定放弃此空间众包任务? 这会对您的信誉造成巨大的影响！");

    if (gnl == true) {

        function sure_giveUpTwice() {
            var gnl1 = confirm("再次确认，是否放弃放弃此空间众包任务? 这会对您的信誉造成巨大的影响！");

            if (gnl1 == true) {

                return true;

            } else {

                window.event.returnValue = false;
            }
        }

    } else {

        window.event.returnValue = false;
    }
}

function sure_complete() {

    var gnl = confirm("确定完成此任务？");

    if (gnl == true) {

        return true;

    } else {

        window.event.returnValue = false;
    }
}