import std;

void main() {
    string s;
    int x, y;
    readf("%s\n%d %d\n", s, x, y);

    auto G = s.group.array;

    bool[int] xList, yList;
    xList[0] = yList[0] = 0;

    int dir = -1;
    foreach (g; G) {
        if (g[0] == 'T') {
            if (dir == -1) dir = 0;

            dir = (dir + g[1].to!int) % 2;
        }
        else {
            if (dir == -1) {
                bool[int] nxt;
                foreach (xl; xList.keys) {
                    nxt[xl+g[1].to!int] = true;
                }
                xList = nxt;
            }
            else if (dir == 0) {
                bool[int] nxt;
                foreach (xl; xList.keys) {
                    nxt[xl-g[1].to!int] = nxt[xl+g[1].to!int] = true;
                }
                xList = nxt;
            }
            else {
                bool[int] nxt;
                foreach (yl; yList.keys) {
                    nxt[yl-g[1].to!int] = nxt[yl+g[1].to!int] = true;
                }
                yList = nxt;
            }
        }
    }

    bool isOK = ((x in xList) && (y in yList));
    writeln(isOK ? "Yes" : "No");
}