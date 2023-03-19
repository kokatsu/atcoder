import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new int[][](H, W);
    foreach (i; 0 .. H) A[i] = readln.chomp.split.to!(int[]);

    auto res = new dchar[][](H, W);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (A[i][j] == 0) res[i][j] = '.';
            else res[i][j] = to!dchar('A'+A[i][j]-1);
        }
    }

    writefln("%(%-(%s%)\n%)", res);
}