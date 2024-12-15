import std;

void main() {
    string S;
    readf("%s\n", S);

    int[char] dict;
    foreach (s; S)
        ++dict[s];

    int[] vals = dict.values;

    string res = vals.all!(a => a == vals[0]) ? "Yes" : "No";
    res.writeln;
}
