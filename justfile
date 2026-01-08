test:
    bundle exec jekyll serve

copy:
    rsync -av --include='*/' --include='*.svg' --exclude='*' ../r_visualizations/projects/ dist

publish:
    git switch gh-pages && git merge main && git push && git switch main
    