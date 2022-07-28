﻿using UnityEngine;

namespace WeChatWASM.MDV
{
    public class BlockSpace : Block
    {
        public BlockSpace( float indent )
            :
            base( indent )
        {
        }

        public override void Draw( Context context )
        {
        }

        public override void Arrange( Context context, Vector2 pos, float maxWidth )
        {
            Rect.position = pos;
            Rect.width = 1.0f;
            Rect.height = context.LineHeight * 0.75f;
        }
    }
}
