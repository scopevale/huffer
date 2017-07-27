gulp = require("gulp")
path = require("path")
tap = require("gulp-tap")

gulp.task "examples", ->  
  # Do something with the file name
  gulp.src("./gulp-src/*.html").pipe(tap((file, t) ->
    console.log path.basename(file.path)
    return
  )).pipe gulp.dest("./gulp-dest")

# Default task call every tasks created so far.
#gulp.task 'default', ['css', 'html', 'svg', 'copy']
gulp.task 'default', ['examples']