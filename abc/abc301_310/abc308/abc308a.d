import std;

void main() {
    auto S = readln.chomp.split.to!(int[]);

    bool cond1 = S.isSorted;
    bool cond2 = S.all!(x => x == clamp(x, 100, 675));
    bool cond3 = S.all!(x => x % 25 == 0);

    string res = cond1 && cond2 && cond3 ? "Yes" : "No";
    res.writeln;
}
