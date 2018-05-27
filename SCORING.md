# Scoring Log

With this repo and [flare-timing](https://github.com/BlockScope/flare-timing)
cloned as siblings the following commands show how to score all tasks at once
for the **FAI Hang Gliding Pre-World Forbes 2012** competition.

```
> ../../bin/extract-input "--file=Australia Forbes 2012.fsdb"
Extracted 8 tasks from "2012 Hang Gliding Pre-World Forbes"
Extracting tasks completed in 2.09 s

> ../../bin/task-length "--file=Australia Forbes 2012.comp-input.yaml"
Australia Forbes 2012.comp-input.yaml
Measuring task lengths completed in 4.95 m

> ../../bin/cross-zone "--file=Australia Forbes 2012.comp-input.yaml"
Reading competition from 'Australia Forbes 2012.comp-input.yaml'
Tracks crossing zones completed in 1.51 m

> ../../bin/tag-zone "--file=Australia Forbes 2012.cross-zone.yaml"
Reading zone crossings from 'Australia Forbes 2012.cross-zone.yaml'
Tagging zones completed in 1.07 s

> ../../bin/align-time "--file=Australia Forbes 2012.comp-input.yaml"
Reading competition from 'Australia Forbes 2012.comp-input.yaml'
Reading flying time range from 'Australia Forbes 2012.cross-zone.yaml'
Reading zone tags from 'Australia Forbes 2012.tag-zone.yaml'
Aligning times completed in 52.97 m

> ../../bin/discard-further "--file=Australia Forbes 2012.comp-input.yaml"
Reading competition from 'Australia Forbes 2012.comp-input.yaml'
Reading task length from 'Australia Forbes 2012.task-length.yaml'
Reading zone tags from 'Australia Forbes 2012.tag-zone.yaml'
Filtering times completed in 1.08 m

> ../../bin/mask-track "--file=Australia Forbes 2012.comp-input.yaml"
Reading competition from 'Australia Forbes 2012.comp-input.yaml'
Reading task length from 'Australia Forbes 2012.task-length.yaml'
Reading flying time range from 'Australia Forbes 2012.cross-zone.yaml'
Reading zone tags from 'Australia Forbes 2012.tag-zone.yaml'
Masking tracks completed in 1.59 m

> ../../bin/land-out "--file=Australia Forbes 2012.comp-input.yaml"
Reading land outs from 'Australia Forbes 2012.mask-track.yaml'
Land outs counted for distance difficulty completed in 179.71 ms

> ../../bin/gap-point "--file=Australia Forbes 2012.comp-input.yaml"
Reading pilots absent from task from 'Australia Forbes 2012.comp-input.yaml'
Reading pilots that did not fly from 'Australia Forbes 2012.cross-zone.yaml'
Reading start and end zone tagging from 'Australia Forbes 2012.tag-zone.yaml'
Reading masked tracks from 'Australia Forbes 2012.mask-track.yaml'
Reading distance difficulty from 'Australia Forbes 2012.land-out.yaml'
Tallying points completed in 1.41 s
```
