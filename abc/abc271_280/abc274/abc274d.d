import std;

void main() {
    int N, x, y;
    readf("%d %d %d\n", N, x, y);

    auto A = readln.chomp.split.to!(int[]);

    auto xMove = A[2 .. $].stride(2), yMove = A[1 .. $].stride(2);
    bool[int] xList, yList;
    xList[A[0]] = yList[0] = true;
    foreach (xm; xMove) {
        bool[int] nxt;
        foreach (key; xList.keys) {
            nxt[key - xm] = nxt[key + xm] = true;
        }
        xList = nxt;
    }

    foreach (ym; yMove) {
        bool[int] nxt;
        foreach (key; yList.keys) {
            nxt[key - ym] = nxt[key + ym] = true;
        }
        yList = nxt;
    }

    bool isOK = (x in xList) && (y in yList);
    writeln(isOK ? "Yes" : "No");
}
