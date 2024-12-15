import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto res = new int[][](H, W);
    foreach (i; 0 .. H) {
        string S;
        readf("%s\n", S);

        int num = -1;
        foreach (j, s; S) {
            if (s == 'c')
                num = 0;
            else if (num >= 0)
                ++num;

            res[i][j] = num;
        }
    }

    writefln("%(%(%s %)\n%)", res);
}
