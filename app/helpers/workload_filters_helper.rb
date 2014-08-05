# -*- encoding : utf-8 -*-
module WorkloadFiltersHelper
  def get_option_tags_for_userselection(usersToShow, selectedUsers)

    result = ''

    usersToShow.each do |user|
      selected = selectedUsers.include?(user) ? 'selected="selected"' : ''

      result += "<option value=\"#{h(user.id)}\" #{selected}>#{h(user.firstname)} #{h(user.lastname)} (#{h(user.name)})</option>"
    end

    return result.html_safe
  end


  def get_option_tags_for_group_selection(selected_group)
    available_groups = Group.all

    result = ''

    available_groups.each do |group|
      selected = [selected_group].include?(group) ? 'selected="selected"' : ''

      result += "<option value=\"#{h(group.id)}\" #{selected}>(#{h(group.name)})</option>"
    end

    return result.html_safe
  end
end
