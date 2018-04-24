module StatusesHelper
  def newStatus
    Status.find_by_name("new")
  end
  def approvedStatus
    Status.find_by_name("approved")
  end
  def rejectedStatus
    Status.find_by_name("rejected")
  end
  def activeStatus
    Status.find_by_name("active")
  end
  def completeStatus
    Status.find_by_name("completed")
  end
  def cancelStatus
    Status.find_by_name("cancelled")
  end
end
