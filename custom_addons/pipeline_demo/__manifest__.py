{
    "name": "Pipeline Demo",
    "version": "17.0.1.0.0",
    "summary": "Demo module for CI/CD testing",
 staging
    "author": "Your Name",
=======
    "author": "ilyas",
 main
    "license": "LGPL-3",
    "depends": ["base"],
    "data": [
        "security/ir.model.access.csv",
        "views/demo_views.xml",
        "data/demo_data.xml",
    ],
 staging
    "installable": True,
=======
  main
    "application": True,
}
