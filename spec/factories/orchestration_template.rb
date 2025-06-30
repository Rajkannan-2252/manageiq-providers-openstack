FactoryBot.define do
<<<<<<< HEAD
  factory :orchestration_template do
    sequence(:name)        { |n| "template name #{seq_padded_for_sorting(n)}" }
    sequence(:content)     { |n| "any template text #{seq_padded_for_sorting(n)}" }
    sequence(:description) { |n| "some description #{seq_padded_for_sorting(n)}" }
  end

  factory :orchestration_template_with_stacks, :parent => :orchestration_template do
    stacks { [FactoryBot.create(:orchestration_stack)] }
=======
  factory :orchestration_template_openstack_in_json,
          :parent => :orchestration_template,
          :class  => "ManageIQ::Providers::Openstack::CloudManager::OrchestrationTemplate" do
    content { File.read(ManageIQ::Providers::Openstack::Engine.root.join(*%w(spec fixtures orchestration_templates heat_parameters.json))) }
  end

  factory :orchestration_template_openstack_in_yaml,
          :parent => :orchestration_template,
          :class  => "ManageIQ::Providers::Openstack::CloudManager::OrchestrationTemplate" do
    content { File.read(ManageIQ::Providers::Openstack::Engine.root.join(*%w(spec fixtures orchestration_templates heat_parameters.yml))) }
  end

  factory :vnfd_template_openstack_in_yaml,
          :parent => :orchestration_template,
          :class  => "ManageIQ::Providers::Openstack::CloudManager::VnfdTemplate" do
    content { File.read(ManageIQ::Providers::Openstack::Engine.root.join(*%w(spec fixtures orchestration_templates vnfd_parameters.yml))) }
>>>>>>> 2e1af6a196322ff27de854b562e170662232f025
  end
end
