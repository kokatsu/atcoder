import std;

void main() {
    string S, T;
    readf("%s %s\n", S, T);

    auto A = readln.chomp.split.to!(int[]);

    string U;
    readf("%s\n", U);

    --A[(S == U ? 0 : 1)];

    writefln("%(%s %)", A);
}
