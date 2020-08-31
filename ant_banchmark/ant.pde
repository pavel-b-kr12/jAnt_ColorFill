    class Ant
    {
        private  int CW = 255;
        private  int C0 = 0;

        public int x, y;
        public int xM;
        public int yM;
        public int rot = 0;
        public int step_i=0;

        public Ant (int xM, int yM, int x, int y, int rot)
        {
            this.xM = xM;
            this.yM = yM;
            this.x = x;
            this.y = y;
            this.rot = rot;
        }

        public int run(int c)
        {
            switch (c)
            {
                default:
                case 0: c=255;  if (rot == 3) rot = 0; else rot++; break;
                case 255: c=0;  if (rot == 0) rot = 3; else rot--; break;

            }

            switch (rot) //step
            {
                case 4: rot = 0;
                case 0: y++; if (y > yM) y = 0; break;
                case 1: x++; if (x > xM) x = 0; break;
                case 2: y--; if (y < 0) y = yM; break;
                case 3: x--; if (x < 0) x = xM; break;

            }
            
            step_i++;
            return c;// == 0 ? CW : C0;

        }

        public int runWallsReversable(int c) //this turn ant back to it going exactly reverse in history (and return to initial pos)
        {
            switch (c)
            {
                default:
                case 0: c = 255; if (rot == 3) rot = 0; else rot++; break;
                case 255: c = 0; if (rot == 0) rot = 3; else rot--; break;
            }

            switch (rot) //step
            {
                case 4: rot = 0;
                case 0: y++; if (y > yM) { y--; rot = 2; } break;
                case 1: x++; if (x > xM) { x--; rot = 3; } break;
                case 2: y--; if (y < 0) { y++; rot = 0; } break;
                case 3: x--; if (x < 0) { x++; rot = 1; } break;
            }

            return c;

        }


        public int runWallsMirror(int c)
        {
            switch (c)
            {
                default:
                case 0: c = 255; if (rot == 3) rot = 0; else rot++; break;
                case 255: c = 0; if (rot == 0) rot = 3; else rot--; break;
            }

            switch (rot) //step
            {
                case 4: rot = 0;
                case 0: y++; if (y > yM) { y -= 2; rot = 2; } break;
                case 1: x++; if (x > xM) { x -= 2; rot = 3; } break;
                case 2: y--; if (y < 0) { y += 2; rot = 0; } break;
                case 3: x--; if (x < 0) { x += 2; rot = 1; } break;
            }

            return c;
        }



        public int runWallsReflection(int c) //not as good as expected
        {
            switch (c)
            {
                default:
                case 0: c = 255; if (rot == 3) rot = 0; else rot++; break;
                case 255: c = 0; if (rot == 0) rot = 3; else rot--; break;
            }

            switch (rot) //step
            {
                 case 4: rot = 0;
                case 0: y++; if (y > yM) { y -= 1; rot = 1; } break;
                case 1: x++; if (x > xM) { x -= 1; rot = 2; } break;
                case 2: y--; if (y < 0) { y += 1; rot = 3; } break;
                case 3: x--; if (x < 0) { x += 1; rot = 0; } break;
            }

            return c;
        }
    }
