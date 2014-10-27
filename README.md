# DUI - DialedIN User Interface #

This repository is a test/development rig for buidling the new DUI Library for DialedIN 3.0.

Currently it is constructed to evaluate running all the supporting technology against the 2.X application stack. That is, without a lot of the asset support found in Rails 3.

The supporting technology includes:

- Zurb Foundation
- Knockout JS
- Font Awesome Icons
- Cells plugin
- Rails Asset Pipeline gem

So the good news is that all these technologies do work with our old Rails 2.3 stack. So it will be technically possible to build a new UI, if we so choose, and have it be based on the same technology we plan to deploy for 3.0.

To run this, clone the repo, create a new RVM environment whcih uses the same base Ruby version as DI2.X. Then run bundle and script/server. The test page that'll come up with demonstrate functionality of the 5 core technologies.