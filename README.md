# Rails Feature Toggle Example

This is an example from my talk When You Say DevOps showing how simple
it is to implement feature toggles yourself and start growing them for
your needs from there. This can be constrasted with third-party
solution (library or service) which can bring unnecessary complexity
to your project especially if you and your team are still learning how
powerfull feature toggles can be.

There are three important moments in this repository with regard to
feature toggles:

1. [Introduction of simple `Feature` module](https://github.com/frzng/toggles-example/releases/tag/feature-lib-introduced)
2. [Test support for temporary override of feature config](https://github.com/frzng/toggles-example/releases/tag/feature-lib-test-support)
3. [Branching by feature toggle `saas_greet`](https://github.com/frzng/toggles-example/releases/tag/feature-toggle-applied)

All this can evolve in many ways. You can autoload the feature
library. Optimize YAML loading and parsing on every `enabled?`
call. Support for aditional source of feature toggle like HTTP cookies
or sessions. Enable features only for some clients by saying `30%`
instead of simple `true` or `false`. Integrate it with your
analytics. The possibilities are endless.

But remember, you do not need branches for intensive in-house product
development where you have high levels of trust and ability to spot
defect quickly. There are already different branches on each
developer’s machine and on every stage of delivery
pipeline. Introducing even more branches is useless and actually
introduces unnecessary complexity. If you need to branch your code,
there better and more powerful ways. This my point here and is part of
my war cry during When You Say DevOps talk.
