import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto cnts = new int[](N + 1);
    foreach (a; A)
        ++cnts[a];

    foreach (i; 1 .. N + 1) {
        if (cnts[i] != 4) {
            i.writeln;
            return;
        }
    }
}
