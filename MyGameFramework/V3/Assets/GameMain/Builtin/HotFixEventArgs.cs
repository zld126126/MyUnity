using GameFramework.Event;

public class HotFixEventArgs : GameEventArgs
{
    public static readonly int EventId = typeof(HotFixEventArgs).GetHashCode();
    public override int Id => EventId;
    public string DllName { get; private set; }
    public System.Reflection.Assembly Assembly { get; private set; }
    public object UserData { get; private set; }
    public HotFixEventArgs Fill(string dllName, System.Reflection.Assembly dll, object userdata)
    {
        this.DllName = dllName;
        this.Assembly = dll;
        this.UserData = userdata;
        return this;
    }
    public override void Clear()
    {
        this.DllName = default;
        this.Assembly = null;
        this.UserData = null;
    }
}
