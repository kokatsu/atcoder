import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto cnts = new int[](N);
    foreach (a; A) ++cnts[a-1];

    bool isOK = true;
    foreach (c; cnts) isOK &= (c == 1);

    writeln(isOK ? "Yes" : "No");
}