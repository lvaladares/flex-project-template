resource "twilio_taskrouter_workspaces_task_queues_v1" "everyone" {
  workspace_sid  = twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name  = "Everyone"
  target_workers = "1==1"
  max_reserved_workers = 1
  task_order = "FIFO"
  reservation_activity_sid = twilio_taskrouter_workspaces_activities_v1.unavailable.sid
  assignment_activity_sid = twilio_taskrouter_workspaces_activities_v1.on_a_task.sid
}

resource "twilio_taskrouter_workspaces_task_queues_v1" "template_example_sales" {
  workspace_sid  = twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name  = "Template Example Sales"
  target_workers = "routing.skills HAS 'template_example_sales'"
  max_reserved_workers = 1
  task_order = "FIFO"
  reservation_activity_sid = twilio_taskrouter_workspaces_activities_v1.unavailable.sid
  assignment_activity_sid = twilio_taskrouter_workspaces_activities_v1.on_a_task.sid
}

resource "twilio_taskrouter_workspaces_task_queues_v1" "template_example_support" {
  workspace_sid  = twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name  = "Template Example Support"
  target_workers = "routing.skills HAS 'template_example_support'"
  max_reserved_workers = 1
  task_order = "FIFO"
  reservation_activity_sid = twilio_taskrouter_workspaces_activities_v1.unavailable.sid
  assignment_activity_sid = twilio_taskrouter_workspaces_activities_v1.on_a_task.sid
}

resource "twilio_taskrouter_workspaces_task_queues_v1" "internal_calls" {
  workspace_sid  = twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name  = "Internal Calls"
  target_workers = "1==1"
  max_reserved_workers = 1
  task_order = "FIFO"
  reservation_activity_sid = twilio_taskrouter_workspaces_activities_v1.unavailable.sid
  assignment_activity_sid = twilio_taskrouter_workspaces_activities_v1.on_a_task.sid
}
