import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto res = new dchar[][](H+2, W+2);
    foreach (i; 0 .. H+2) res[i][] = '#';

    foreach (i; 1 .. H+1) {
        auto a = readln.chomp.to!(dchar[]);
        res[i][1..$-1] = a;
    }

    foreach (r; res) r.writeln;
}