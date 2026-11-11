<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submitted Profile</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            width: 100%;
            max-width: 550px;
        }

        .card {
            background: #ffffff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            text-align: center;
            margin-bottom: 25px;
            padding-bottom: 20px;
            border-bottom: 1px solid #ecf0f1;
        }

        .avatar {
            width: 70px;
            height: 70px;
            background-color: #3498db;
            color: white;
            font-size: 30px;
            font-weight: bold;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 12px;
        }

        h1 {
            color: #2c3e50;
            font-size: 26px;
            margin-bottom: 6px;
        }

        .badge {
            display: inline-block;
            background-color: #e8f4f8;
            color: #2980b9;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
        }

        .detail-row {
            margin-bottom: 15px;
        }

        .detail-row .label {
            display: block;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #95a5a6;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .detail-row .value {
            font-size: 15px;
            color: #2c3e50;
            line-height: 1.5;
        }

        .intro-box {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            border-left: 4px solid #3498db;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #7f8c8d;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
            margin-top: 25px;
        }

        .btn:hover {
            background-color: #636e72;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card profile-card">
            <div class="profile-header">
                <div class="avatar">
                    <%= request.getAttribute("name") != null ? request.getAttribute("name").toString().substring(0, 1).toUpperCase() : "U" %>
                </div>
                <h1>${name}</h1>
                <p class="badge">${studentId}</p>
            </div>

            <div class="profile-details">
                <div class="detail-row">
                    <span class="label">Programme</span>
                    <span class="value">${programme}</span>
                </div>
                <div class="detail-row">
                    <span class="label">Email</span>
                    <span class="value">${email}</span>
                </div>
                <div class="detail-row">
                    <span class="label">Hobbies</span>
                    <span class="value">${hobbies}</span>
                </div>
                <div class="detail-row intro-box">
                    <span class="label">Self-Introduction</span>
                    <p class="value">${intro}</p>
                </div>
            </div>

            <a href="index.html" class="btn">Edit / Submit Another</a>
        </div>
    </div>
</body>
</html>