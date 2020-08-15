defmodule ComerierWeb.Api.V1.TimeEntryControllerTest do
  use ComerierWeb.ConnCase

  describe "#create" do
    test "creates a time entry when data is valid", %{conn: conn} do
      task_id = insert(:task).id
      started_at = "2020-08-14T21:20:36Z"
      attrs = %{taskId: task_id, startedAt: started_at}

      conn = post(conn, Routes.api_v1_time_entry_path(conn, :create), attrs)

      assert %{"taskId" => ^task_id, "startedAt" => ^started_at} = json_response(conn, 201)
    end

    test "renders errors when data is invalid", %{conn: conn} do
      attrs = %{taskId: nil, startedAt: nil}

      conn = post(conn, Routes.api_v1_time_entry_path(conn, :create), attrs)

      assert %{"errors" => [%{"startedAt" => "can't be blank"}, %{"taskId" => "can't be blank"}]} =
               json_response(conn, 422)
    end
  end
end
