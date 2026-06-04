        function formatTime(ms) {
        var totalSecs = Math.floor(ms / 1000)
        var mins = Math.floor(totalSecs / 60)
        var secs = totalSecs % 60
        return mins + ":" + (secs < 10 ? "0" + secs : secs)
}

if(core.position===core.duration){
        core.next();
}