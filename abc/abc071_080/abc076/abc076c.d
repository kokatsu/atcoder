import std;

void main() {
    auto S = readln.chomp;
    auto T = readln.chomp;

    ulong u = S.length, v = T.length;

    string no = 'z'.repeat(u + 1).to!string;

    string res = no;
    if (u >= v) {
        ulong d = u - v + 1;
        foreach (i; 0 .. d) {
            bool isOK = true;
            foreach (j, t; T) {
                dchar s = S[i + j];
                isOK &= (s == t || s == '?');
            }

            if (!isOK)
                continue;

            auto str = S.dup.to!(dchar[]);
            foreach (j; 0 .. i)
                if (str[j] == '?')
                    str[j] = 'a';
            foreach (j, t; T) {
                if (str[i + j] != '?')
                    continue;
                str[i + j] = t;
            }
            foreach (j; i + v .. u)
                if (str[j] == '?')
                    str[j] = 'a';

            res = min(res, str.to!string);
        }
    }

    if (res == no)
        res = "UNRESTORABLE";

    res.writeln;
}
