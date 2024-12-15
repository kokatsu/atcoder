import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    bool[int] dict;
    foreach (a; A)
        dict[a] = true;

    bool isOk;
    foreach (a; A)
        isOk |= (a - 3 in dict) && (a + 3 in dict);

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
