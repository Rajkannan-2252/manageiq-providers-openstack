FactoryBot.define do
<<<<<<< HEAD
  factory :cloud_network do
    sequence(:name)    { |n| "cloud_network_#{seq_padded_for_sorting(n)}" }
    sequence(:ems_ref) { |n| "ems_ref_#{seq_padded_for_sorting(n)}" }
  end
=======
  factory :cloud_network_openstack,
          :class  => "ManageIQ::Providers::Openstack::NetworkManager::CloudNetwork",
          :parent => :cloud_network

  factory :cloud_network_private_openstack,
          :class  => "ManageIQ::Providers::Openstack::NetworkManager::CloudNetwork::Private",
          :parent => :cloud_network_openstack

  factory :cloud_network_public_openstack,
          :class  => "ManageIQ::Providers::Openstack::NetworkManager::CloudNetwork::Public",
          :parent => :cloud_network_openstack
>>>>>>> 2e1af6a196322ff27de854b562e170662232f025
end
