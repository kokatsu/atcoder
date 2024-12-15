import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    int now;
    auto pos = new int[](N);
    foreach (i, a; A) {
        if (a == -2) {
            now = i.to!int;
        }
        else {
            pos[a] = i.to!int;
        }
    }

    auto res = new int[](N);
    foreach (i; 0 .. N) {
        res[i] = now + 1;
        now = pos[now];
    }

    writefln("%(%s %)", res);
}
