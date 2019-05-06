package tools;
import haxe.ds.Option;

class Tools
{
    public static inline function getOrElse<T>(o:Option<T>, e:T):T
    {
        return switch(o)
        {
            case Some(v):v;
            case None:e;
        }
    }

    public static inline function map<In, Out>(o:Option<In>, f:In->Out):Option<Out>
    {
        return switch(o)
        {
            case Some(v):Some(f(v));
            case None:None;
        }
    }

    public static inline function iter<T>(o:Option<T>, f:T->Void):Void
    {
        switch(o)
        {
            case Some(v):f(v);
            case None:
        }
    }
}
