class Ability
  include CanCan::Ability

  def initialize(employee)
    employee ||= Employee.new # guest employee (not logged in)
    if employee.admin?
      can :manage, :all
    elsif employee.doctor?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, HealthCenter, HealthCenter.default_scoped do |health_center|
        employee.health_center_id == health_center.id
      end
      can :manage, Community, Community.default_scoped do |community|
        employee.health_center_id == community.health_center_id
      end
      can :manage, Patient
      can :manage, PatientType
      can :manage, Inventory
      can :manage, Medicine
      can :read, LabReport
      can :read, Medication
    elsif employee.nurse?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, Patient
      can :manage, PatientType
      can :read, LabReport
      can :read, Medication
    elsif employee.technician?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, Patient
      can :manage, PatientType
      can :manage, LabReport
      can :read, Medication
    elsif employee.chw?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, Patient
      can :manage, PatientType
      can :read, LabReport
      can :manage, Medication
    end
  end
end
