import std;

alias Position = Tuple!(int, "h", int, "w");

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int Ch, Cw;
    readf("%d %d\n", Ch, Cw);

    int Dh, Dw;
    readf("%d %d\n", Dh, Dw);

    auto S = new string[](H);
    foreach (i; 0 .. H)
        S[i] = readln.chomp;

    --Ch, --Cw, --Dh, --Dw;

    auto cost = new int[][](H, W);
    foreach (i; 0 .. H)
        cost[i][] = int.max;
    cost[Ch][Cw] = 0;

    auto deltah = [-1, 0, 1, 0], deltaw = [0, 1, 0, -1];

    auto deq = DList!Position(Position(Ch, Cw));
    while (!deq.empty) {
        auto f = deq.front;
        deq.removeFront;

        if (f.h == Dh && f.w == Dw)
            break;

        static foreach (i; 0 .. 4) {
            {
                int nh = f.h + deltah[i], nw = f.w + deltaw[i];

                if (0 <= nh && nh < H && 0 <= nw && nw < W && S[nh][nw] == '.'
                        && cost[nh][nw] > cost[f.h][f.w]) {
                    cost[nh][nw] = cost[f.h][f.w];
                    deq.insertFront(Position(nh, nw));
                }
            }
        }

        static foreach (i; -2 .. 3) {
            {
                static foreach (j; -2 .. 3) {
                    {
                        int nh = f.h + i, nw = f.w + j;

                        if (0 <= nh && nh < H && 0 <= nw && nw < W
                                && S[nh][nw] == '.' && cost[nh][nw] > cost[f.h][f.w] + 1) {
                            cost[nh][nw] = cost[f.h][f.w] + 1;
                            deq.insertBack(Position(nh, nw));
                        }
                    }
                }
            }
        }
    }

    writeln(cost[Dh][Dw] == int.max ? -1 : cost[Dh][Dw]);
}
