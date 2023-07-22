import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto res = new string[](H*2);
    foreach (i; 0 .. H) {
        string C;
        readf("%s\n", C);

        res[i*2] = res[i*2+1] = C;
    }

    writefln("%(%-(%s%)\n%)", res);
}