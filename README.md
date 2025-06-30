<<<<<<< HEAD
# ManageIQ

[![CI](https://github.com/ManageIQ/manageiq/actions/workflows/ci.yaml/badge.svg)](https://github.com/ManageIQ/manageiq/actions/workflows/ci.yaml)
[![Code Climate](https://codeclimate.com/github/ManageIQ/manageiq/badges/gpa.svg)](https://codeclimate.com/github/ManageIQ/manageiq)
[![Codacy](https://api.codacy.com/project/badge/grade/9ffce48ccb924020ae8f9e698048e9a4)](https://www.codacy.com/app/ManageIQ/manageiq)
[![Coverage Status](https://coveralls.io/repos/ManageIQ/manageiq/badge.svg?branch=master&service=github)](https://coveralls.io/github/ManageIQ/manageiq?branch=master)

[![License](http://img.shields.io/badge/license-APACHE2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ManageIQ/manageiq?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Translate](https://img.shields.io/badge/translate-transifex-blue.svg)](https://www.transifex.com/manageiq/manageiq/dashboard/)
[![Open Source Helpers](https://www.codetriage.com/manageiq/manageiq/badges/users.svg)](https://www.codetriage.com/manageiq/manageiq)

[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/4282/badge)](https://www.bestpractices.dev/projects/4282)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/ManageIQ/manageiq/badge)](https://securityscorecards.dev/viewer/?uri=github.com/ManageIQ/manageiq)
[![CNCF Landscape](https://img.shields.io/badge/CNCF%20Landscape-5699C6?logo=cncf)](https://landscape.cncf.io/?item=provisioning--automation-configuration--manageiq)

## Discover, Optimize, and Control your Hybrid IT

### Manage containers, virtual machines, networks, and storage from a single platform

ManageIQ is an open-source Management Platform that delivers the insight, control, and
automation that enterprises need to address the challenges of managing hybrid
IT environments.  It has the following feature sets:

* **Insight**: Discovery, Monitoring, Utilization, Performance, Reporting, Analytics, Chargeback, and Trending.
* **Control**: Security, Compliance, Alerting, Policy-Based Resource and Configuration Management.
* **Automate**: IT Process, Task and Event, Provisioning, Workload Management and Orchestration.
* **Integrate**: Systems Management, Tools and Processes, Event Consoles, CMDB, RBA, and Web Services.

## Get Started

*  [**Download community builds** for your platform](http://manageiq.org/download/)
*  [**Fork the source** to contribute](https://github.com/ManageIQ/manageiq)
*  [**Learn** to use ManageIQ](https://www.youtube.com/user/ManageIQVideo)

## Learn more

*  [**Read** developer guides](https://github.com/ManageiQ/guides)
*  [**Chat** with contributors on Gitter](https://gitter.im/ManageIQ/manageiq)
*  [**File or view bug reports and feature requests** using Issues on Github](https://github.com/ManageIQ/manageiq/issues?state=open)
*  [**Ask** questions of ManageIQ experts](http://talk.manageiq.org/)
*  [**Discuss** ManageIQ with developers and power users](http://talk.manageiq.org/)

We respectfully ask that you do not directly email any manageiq committers with
questions or problems. The community is best served when discussions are held in
public.

## Licensing

See [LICENSE.txt](LICENSE.txt).

Except where otherwise noted, all ManageIQ source files are covered by
the following copyright and license notice:

Copyright (c) 2014-present ManageIQ Authors.

## Export Notice

By downloading ManageIQ software, you acknowledge that you understand all of the
following: ManageIQ software and technical information may be subject to the
U.S. Export Administration Regulations (the "EAR") and other U.S. and foreign
laws and may not be exported, re-exported or transferred (a) to any country
listed in Country Group E:1 in Supplement No. 1 to part 740 of the EAR
(currently, Cuba, Iran, North Korea, Sudan & Syria); (b) to any prohibited
destination or to any end user who has been prohibited from participating in
U.S. export transactions by any federal agency of the U.S. government; or (c)
for use in connection with the design, development or production of nuclear,
chemical or biological weapons, or rocket systems, space launch vehicles, or
sounding rockets, or unmanned air vehicle systems. You may not download ManageIQ
software or technical information if you are located in one of these countries
or otherwise subject to these restrictions. You may not provide ManageIQ
software or technical information to individuals or entities located in one of
these countries or otherwise subject to these restrictions. You are also
responsible for compliance with foreign law requirements applicable to the
import, export and use of ManageIQ software and technical information.
=======
# ManageIQ::Providers::Openstack

[![CI](https://github.com/ManageIQ/manageiq-providers-openstack/actions/workflows/ci.yaml/badge.svg)](https://github.com/ManageIQ/manageiq-providers-openstack/actions/workflows/ci.yaml)
[![Maintainability](https://api.codeclimate.com/v1/badges/d4ac5021ef2927f3b3a7/maintainability)](https://codeclimate.com/github/ManageIQ/manageiq-providers-openstack/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/d4ac5021ef2927f3b3a7/test_coverage)](https://codeclimate.com/github/ManageIQ/manageiq-providers-openstack/test_coverage)

[![Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ManageIQ/manageiq-providers-openstack?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

ManageIQ plugin for the OpenStack provider.

## Development

See the section on plugins in the [ManageIQ Developer Setup](http://manageiq.org/docs/guides/developer_setup/plugins)

For quick local setup run `bin/setup`, which will clone the core ManageIQ repository under the *spec* directory and setup necessary config files. If you have already cloned it, you can run `bin/update` to bring the core ManageIQ code up to date.

### VCR cassettes re-recording

You will need testing OpenStack environment(s) and `openstack_environments.yml` file with credentials in format like:

```yml
---
- test_env_1:
    ip: 11.22.33.44
    password: long_password_1
    user: admin_1
- test_env_2:
    ip: 11.22.33.55
    password: long_password_2
    user: admin_2
```

Then you can run `bundle exec rake vcr:rerecord` and following will happen:
* Current VCR cassettes files will be deleted
* Credentials from `openstack_environments.yml` file will be injected into spec files
* Specs needed for re-recording of VCR cassettes will be run. During this step manageiq will call OpenStack APIs at specified endpoints
* Credentials present in spec files and VCR cassettes will be changed to dummy data so tests can run from VCR cassettes

## License

The gem is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
>>>>>>> 2e1af6a196322ff27de854b562e170662232f025
