/****************************************************
	文件：DBMgr.cs
	作者：SIKI学院——Plane
	邮箱: 1785275942@qq.com
	日期：2018/12/10 2:16   	
	功能：数据库管理类
*****************************************************/

using System;
using MySql.Data.MySqlClient;
using PEProtocol;

public class DBMgr {
    private static DBMgr instance = null;
    public static DBMgr Instance {
        get {
            if (instance == null) {
                instance = new DBMgr();
            }
            return instance;
        }
    }
    private MySqlConnection conn;

    public void Init() {
        conn = new MySqlConnection("server=localhost;User Id = root;passwrod=;Database=darkgod;Charset = utf8");
        conn.Open();
        PECommon.Log("DBMgr Init Done.");

        //QueryPlayerData("xxxx", "oooo");
    }


    public PlayerData QueryPlayerData(string acct, string pass) {
        bool isNew = true;
        PlayerData playerData = null;
        MySqlDataReader reader = null;
        try {
            MySqlCommand cmd = new MySqlCommand("select * from account where acct = @acct", conn);
            cmd.Parameters.AddWithValue("acct", acct);
            reader = cmd.ExecuteReader();
            if (reader.Read()) {
                isNew = false;
                string _pass = reader.GetString("pass");
                if (_pass.Equals(pass)) {
                    //密码正确，返回玩家数据
                    playerData = new PlayerData {
                        id = reader.GetInt32("id"),
                        name = reader.GetString("name"),
                        lv = reader.GetInt32("level"),
                        exp = reader.GetInt32("exp"),
                        power = reader.GetInt32("power"),
                        coin = reader.GetInt32("coin"),
                        diamond = reader.GetInt32("diamond"),

                        hp = reader.GetInt32("hp"),
                        ad = reader.GetInt32("ad"),
                        ap = reader.GetInt32("ap"),
                        addef = reader.GetInt32("addef"),
                        apdef = reader.GetInt32("apdef"),
                        dodge = reader.GetInt32("dodge"),
                        pierce = reader.GetInt32("pierce"),
                        critical = reader.GetInt32("critical")
                        //TOADD
                    };
                }
            }
        }
        catch (Exception e) {
            PECommon.Log("Query PlayerData By Acct&Pass Error:" + e, LogType.Error);
        }
        finally {
            if (reader != null) {
                reader.Close();
            }
            if (isNew) {
                //不存在账号数据，创建新的默认账号数据，并返回
                playerData = new PlayerData {
                    id = -1,
                    name = "",
                    lv = 1,
                    exp = 0,
                    power = 150,
                    coin = 5000,
                    diamond = 500,

                    hp = 2000,
                    ad = 275,
                    ap = 265,
                    addef = 67,
                    apdef = 43,
                    dodge = 7,
                    pierce = 5,
                    critical = 2,
                    //TOADD
                };

                playerData.id = InsertNewAcctData(acct, pass, playerData);
            }
        }
        return playerData;
    }

    private int InsertNewAcctData(string acct, string pass, PlayerData pd) {
        int id = -1;
        try {
            MySqlCommand cmd = new MySqlCommand(
                "insert into account set acct=@acct,pass =@pass,name=@name,level=@level,exp=@exp,power=@power,coin=@coin,diamond=@diamond," +
                "hp = @hp, ad = @ad, ap = @ap, addef = @addef, apdef = @apdef, dodge = @dodge, pierce = @pierce, critical = @critical", conn);
            cmd.Parameters.AddWithValue("acct", acct);
            cmd.Parameters.AddWithValue("pass", pass);
            cmd.Parameters.AddWithValue("name", pd.name);
            cmd.Parameters.AddWithValue("level", pd.lv);
            cmd.Parameters.AddWithValue("exp", pd.exp);
            cmd.Parameters.AddWithValue("power", pd.power);
            cmd.Parameters.AddWithValue("coin", pd.coin);
            cmd.Parameters.AddWithValue("diamond", pd.diamond);

            cmd.Parameters.AddWithValue("hp", pd.hp);
            cmd.Parameters.AddWithValue("ad", pd.ad);
            cmd.Parameters.AddWithValue("ap", pd.ap);
            cmd.Parameters.AddWithValue("addef", pd.addef);
            cmd.Parameters.AddWithValue("apdef", pd.apdef);
            cmd.Parameters.AddWithValue("dodge", pd.dodge);
            cmd.Parameters.AddWithValue("pierce", pd.pierce);
            cmd.Parameters.AddWithValue("critical", pd.critical);

            //TOADD
            cmd.ExecuteNonQuery();
            id = (int)cmd.LastInsertedId;
        }
        catch (Exception e) {
            PECommon.Log("Insert PlayerData Error:" + e, LogType.Error);
        }
        return id;
    }

    public bool QueryNameData(string name) {
        bool exist = false;
        MySqlDataReader reader = null;
        try {
            MySqlCommand cmd = new MySqlCommand("select * from account where name= @name", conn);
            cmd.Parameters.AddWithValue("name", name);
            reader = cmd.ExecuteReader();
            if (reader.Read()) {
                exist = true;
            }
        }
        catch (Exception e) {
            PECommon.Log("Query Name State Error:" + e, LogType.Error);
        }
        finally {
            if (reader != null) {
                reader.Close();
            }
        }

        return exist;
    }

    public bool UpdatePlayerData(int id, PlayerData playerData) {
        try {
            MySqlCommand cmd = new MySqlCommand(
            "update account set name=@name,level=@level,exp=@exp,power=@power,coin=@coin,diamond=@diamond," +
            "hp = @hp, ad = @ad, ap = @ap, addef = @addef, apdef = @apdef, dodge = @dodge, pierce = @pierce, critical = @critical where id =@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.Parameters.AddWithValue("name", playerData.name);
            cmd.Parameters.AddWithValue("level", playerData.lv);
            cmd.Parameters.AddWithValue("exp", playerData.exp);
            cmd.Parameters.AddWithValue("power", playerData.power);
            cmd.Parameters.AddWithValue("coin", playerData.coin);
            cmd.Parameters.AddWithValue("diamond", playerData.diamond);

            cmd.Parameters.AddWithValue("hp", playerData.hp);
            cmd.Parameters.AddWithValue("ad", playerData.ad);
            cmd.Parameters.AddWithValue("ap", playerData.ap);
            cmd.Parameters.AddWithValue("addef", playerData.addef);
            cmd.Parameters.AddWithValue("apdef", playerData.apdef);
            cmd.Parameters.AddWithValue("dodge", playerData.dodge);
            cmd.Parameters.AddWithValue("pierce", playerData.pierce);
            cmd.Parameters.AddWithValue("critical", playerData.critical);
            //TOADD Others
            cmd.ExecuteNonQuery();
        }
        catch (Exception e) {
            PECommon.Log("Update PlayerData Error:" + e, LogType.Error);
            return false;
        }
        return true;
    }
}
